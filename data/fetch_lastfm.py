"""
data/fetch_lastfm.py — Last.fm track fetcher for Smriti.

3-phase strategy per language:
  Phase 1 — language tag fetch  (e.g. "telugu", "tollywood")
  Phase 2 — mood sub-tag fetch  (e.g. "love", "sad") with language filter
  Phase 3 — artist-based fetch  (well-known artists per language) as backup

Mood assignment (3 layers, first match wins):
  Layer 1 — track's own Last.fm tags → TAG_TO_MOOD lookup
  Layer 2 — song title keyword scan  → TITLE_KEYWORDS lookup
  Layer 3 — fetch sub-tag used       → SUBTAG_TO_MOOD lookup (fixes "feel good" flood)

Target: 200 songs × 5 languages = 1000 songs.

Run on host (NOT inside Docker):
  cd /path/to/personal-song-memory-engine
  pip install pylast python-dotenv
  python data/fetch_lastfm.py
"""

import ssl
ssl._create_default_https_context = ssl._create_unverified_context

import csv
import logging
import os
import re
import time
from collections import Counter
from pathlib import Path

import pylast
pylast.SSL_CONTEXT = False
from dotenv import load_dotenv

# ── Setup ─────────────────────────────────────────────────────────────────────

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s  %(levelname)-8s  %(message)s",
    datefmt="%H:%M:%S",
)
log = logging.getLogger(__name__)

_env_path = Path(__file__).parent.parent / ".env"
load_dotenv(_env_path)

API_KEY    = os.getenv("LASTFM_API_KEY", "")
API_SECRET = os.getenv("LASTFM_API_SECRET", "")

OUTPUT_CSV          = Path(__file__).parent / "csv" / "lastfm_songs.csv"
TARGET_PER_LANGUAGE = 200
TRACKS_PER_CALL     = 100

CSV_COLUMNS = [
    "title", "singer", "music_director", "actor", "genre",
    "language", "movie_name", "album", "year",
    "duration_seconds", "audio_file_path", "moods",
]

# ── Language config ────────────────────────────────────────────────────────────

LANGUAGE_CONFIG: dict[str, dict] = {
    "Telugu": {
        "tags":  ["telugu", "tollywood", "telugu songs", "telugu music"],
        "moods": ["love", "sad", "melody", "devotional", "dance", "happy", "romantic"],
        "artists": [
            "SP Balasubrahmanyam", "Sid Sriram", "Anurag Kulkarni",
            "Sunitha Upadrashta", "Haricharan", "Karthik",
            "Devi Sri Prasad", "SS Thaman", "Mangli", "Rahul Sipligunj",
            "Shreya Ghoshal", "Armaan Malik",
        ],
    },
    "Hindi": {
        "tags":  ["hindi", "bollywood", "hindi songs", "hindi film"],
        "moods": ["love", "sad", "romantic", "party", "devotional", "nostalgic", "melody"],
        "artists": [
            "Arijit Singh", "Shreya Ghoshal", "KK", "Sonu Nigam",
            "Atif Aslam", "Mohit Chauhan", "Jubin Nautiyal",
            "Shankar Mahadevan", "Udit Narayan", "Lata Mangeshkar",
            "Neha Kakkar", "Armaan Malik",
        ],
    },
    "Tamil": {
        "tags":  ["tamil", "kollywood", "tamil songs", "tamil music"],
        "moods": ["love", "sad", "melody", "devotional", "dance", "romantic", "happy"],
        "artists": [
            "AR Rahman", "Sid Sriram", "Anirudh Ravichander",
            "Harris Jayaraj", "Yuvan Shankar Raja", "D Imman",
            "Hariharan", "Chinmayi", "Vijay Prakash", "Benny Dayal",
            "SP Balasubrahmanyam", "Karthik",
        ],
    },
    "Malayalam": {
        "tags":  ["malayalam", "mollywood", "malayalam songs", "malayalam music"],
        "moods": ["love", "sad", "melody", "devotional", "romantic", "happy", "classic"],
        "artists": [
            "KS Chithra", "Yesudas", "Vijay Yesudas",
            "Sithara Krishnakumar", "Vineeth Sreenivasan",
            "M Jayachandran", "Bijibal", "Shaan Rahman",
            "Vidhu Prathap", "Ouseppachan",
        ],
    },
    "English": {
        "tags":  ["pop", "indie pop", "singer-songwriter", "alternative", "soul"],
        "moods": ["happy", "sad", "chill", "romantic", "energetic", "party", "nostalgic"],
        "artists": [],   # Tags alone give 200+ for English
    },
}

# ── Mood mapping — Layer 1: Last.fm track tags ─────────────────────────────────

TAG_TO_MOOD: dict[str, str] = {
    # happy
    "happy": "happy", "upbeat": "happy", "cheerful": "happy",
    "joyful": "happy", "feelgood": "happy", "feel-good": "happy",
    # feel good
    "feel good": "feel good", "positive": "feel good",
    "good vibes": "feel good", "sunshine": "feel good",
    # sad
    "sad": "sad", "melancholy": "sad", "heartbreak": "sad",
    "emotional": "sad", "heartbroken": "sad", "breakup": "sad",
    "sad songs": "sad", "tearjerker": "sad", "emotional songs": "sad",
    # romantic / love
    "romantic": "romantic", "love": "romantic", "romance": "romantic",
    "love songs": "romantic", "melody": "romantic", "melodious": "romantic",
    # relaxed
    "ambient": "relaxed", "peaceful": "relaxed", "calm": "relaxed",
    "relaxed": "relaxed", "mellow": "relaxed", "soft": "relaxed",
    # sleepy
    "sleep": "sleepy", "sleepy": "sleepy", "lullaby": "sleepy",
    "sleeping": "sleepy", "night": "sleepy",
    # energetic
    "energetic": "energetic", "hype": "energetic", "power": "energetic",
    "uplifting": "energetic", "pump up": "energetic",
    # devotional
    "devotional": "devotional", "spiritual": "devotional",
    "bhajan": "devotional", "prayer": "devotional", "gospel": "devotional",
    "bhakti": "devotional", "carnatic": "devotional", "classical": "devotional",
    "hindustani": "devotional",
    # focus
    "focus": "focus", "study": "focus", "concentration": "focus",
    "instrumental": "focus", "work": "focus",
    # nostalgic
    "nostalgic": "nostalgic", "nostalgia": "nostalgic", "retro": "nostalgic",
    "classic": "nostalgic", "throwback": "nostalgic", "oldies": "nostalgic",
    "golden era": "nostalgic", "90s": "nostalgic", "80s": "nostalgic",
    # lonely
    "lonely": "lonely", "alone": "lonely", "solitude": "lonely",
    "isolation": "lonely",
    # chill
    "chill": "chill", "lo-fi": "chill", "lofi": "chill",
    "laid-back": "chill", "chillout": "chill", "easy listening": "chill",
    # workout
    "workout": "workout", "gym": "workout", "running": "workout",
    "fitness": "workout", "exercise": "workout",
    # gaming
    "gaming": "gaming", "epic": "gaming", "action": "gaming",
    # party / dance
    "party": "party", "dance": "party", "club": "party",
    "festival": "party", "rave": "party", "edm": "party",
    "item": "party", "dance number": "party", "item number": "party",
}

# Layer 2: sub-tag used during fetch → mood
# This fixes the "feel good" flood when fetching by "love", "sad", "dance" etc.
SUBTAG_TO_MOOD: dict[str, str] = {
    "love":       "romantic",
    "sad":        "sad",
    "melody":     "romantic",
    "romantic":   "romantic",
    "devotional": "devotional",
    "dance":      "party",
    "happy":      "happy",
    "nostalgic":  "nostalgic",
    "classic":    "nostalgic",
    "chill":      "chill",
    "party":      "party",
    "energetic":  "energetic",
    "workout":    "workout",
}

# Layer 3: title keyword scan for Indian songs
# Many Indian songs don't have mood tags — the title often reveals the mood
TITLE_KEYWORDS: list[tuple[list[str], str]] = [
    (["love", "pyaar", "ishq", "prema", "kaadhal", "snehame",
      "prem", "dil", "manasu", "nee", "ninu"], "romantic"),
    (["sad", "dard", "rona", "aansu", "virah", "judaa",
      "dukh", "kadhal", "alone", "miss", "yaad"], "sad"),
    (["dance", "naach", "dj", "item", "party", "disco",
      "thumka", "tapori", "jalsa"], "party"),
    (["god", "bhajan", "aarti", "devi", "shiva", "krishna",
      "rama", "allah", "church", "swami", "deva"], "devotional"),
    (["fight", "josh", "power", "warrior", "victory",
      "champion", "hero", "rebel"], "energetic"),
    (["happy", "khushi", "aanand", "celebrate", "joy",
      "utsav", "holi", "diwali", "festival"], "happy"),
    (["alone", "lonely", "kho", "silence", "gone"], "lonely"),
    (["chill", "relax", "vibe", "easy", "lazy",
      "coffee", "evening", "sunset"], "chill"),
    (["sleep", "lullaby", "night", "raat", "dreams"], "sleepy"),
    (["heart", "broken", "cry", "tear", "pain", "hurt"], "sad"),
]

# Tags that are language/region identifiers — skip for genre
LANGUAGE_TAG_SET = {
    "hindi", "bollywood", "telugu", "tollywood", "tamil", "kollywood",
    "malayalam", "mollywood", "indian", "india", "desi", "english",
    "pop", "western", "indian pop", "film", "movies", "soundtrack",
    "hindi film", "telugu songs", "tamil songs", "malayalam songs",
}

# ── Helpers ────────────────────────────────────────────────────────────────────

def _clean(s: str) -> str:
    s = re.sub(r"[^\w\s-]", "", s.lower().strip())
    return re.sub(r"[\s\-]+", "_", s)[:60]


def make_audio_path(singer: str, title: str) -> str:
    return f"songs/{_clean(singer)}_{_clean(title)}.mp3"


def get_duration(track: pylast.Track) -> int:
    try:
        ms = track.get_duration()
        return int(ms) // 1000 if ms else 0
    except Exception:
        return 0


def get_album(track: pylast.Track) -> str:
    try:
        album = track.get_album()
        return album.title if album and album.title else ""
    except Exception:
        return ""


def get_top_tags(track: pylast.Track, limit: int = 8) -> list[str]:
    try:
        items = track.get_top_tags(limit=limit)
        return [item.item.name for item in items if item.item]
    except Exception:
        return []


def assign_mood(tag_names: list[str], title: str, fetch_subtag: str) -> str:
    """
    3-layer mood assignment:
      Layer 1 — track's Last.fm tags
      Layer 2 — title keyword scan
      Layer 3 — fetch sub-tag used (e.g. "love" → romantic)
    Returns a single mood string (or "feel good" as last resort).
    """
    moods: list[str] = []

    # Layer 1: track tags
    for t in tag_names:
        t_lower = t.lower().strip()
        if t_lower in TAG_TO_MOOD and len(moods) < 2:
            m = TAG_TO_MOOD[t_lower]
            if m not in moods:
                moods.append(m)

    # Layer 2: title keywords (if still no mood)
    if not moods:
        title_lower = title.lower()
        for keywords, mood in TITLE_KEYWORDS:
            for kw in keywords:
                if kw in title_lower:
                    moods.append(mood)
                    break
            if moods:
                break

    # Layer 3: fetch sub-tag (e.g. we searched "love" tag → romantic)
    if not moods and fetch_subtag in SUBTAG_TO_MOOD:
        moods.append(SUBTAG_TO_MOOD[fetch_subtag])

    return "|".join(moods) if moods else "feel good"


def extract_genre(tag_names: list[str]) -> str:
    """First tag that isn't a language/region/generic identifier."""
    for t in tag_names:
        t_lower = t.lower().strip()
        if t_lower not in LANGUAGE_TAG_SET and len(t) > 2:
            return t.title()
    return ""


def build_row(
    track: pylast.Track,
    language: str,
    fetch_subtag: str,
    fetch_tags: bool = True,
) -> dict | None:
    title  = (track.title or "").strip()
    singer = (track.artist.name or "").strip() if track.artist else ""
    if not title or not singer:
        return None

    tag_names = get_top_tags(track, limit=8) if fetch_tags else []
    time.sleep(0.15)

    moods = assign_mood(tag_names, title, fetch_subtag)
    genre = extract_genre(tag_names)
    duration = get_duration(track)
    album    = get_album(track)

    return {
        "title":            title,
        "singer":           singer,
        "music_director":   "",
        "actor":            "",
        "genre":            genre or language,
        "language":         language,
        "movie_name":       "",
        "album":            album,
        "year":             "",
        "duration_seconds": duration or "",
        "audio_file_path":  make_audio_path(singer, title),
        "moods":            moods,
    }


# ── Fetch strategies ───────────────────────────────────────────────────────────

_RATE_LIMIT_CODE = 29
_MAX_RETRIES = 3


def _is_rate_limit(e: Exception) -> bool:
    code = getattr(e, "error_code", None)
    return code == _RATE_LIMIT_CODE or "rate limit" in str(e).lower()


def fetch_by_tag(network: pylast.LastFMNetwork, tag_name: str) -> list[pylast.Track]:
    for attempt in range(1, _MAX_RETRIES + 1):
        try:
            tag   = network.get_tag(tag_name)
            items = tag.get_top_tracks(limit=TRACKS_PER_CALL)
            return [i.item for i in items if i.item]
        except Exception as e:
            if _is_rate_limit(e) and attempt < _MAX_RETRIES:
                log.warning("    Rate limit hit for tag '%s' — waiting 1s (attempt %d/%d)",
                            tag_name, attempt, _MAX_RETRIES)
                time.sleep(1)
                continue
            log.warning("    Tag '%s' failed: %s", tag_name, e)
            return []
    return []


def fetch_by_artist(network: pylast.LastFMNetwork, artist_name: str) -> list[pylast.Track]:
    for attempt in range(1, _MAX_RETRIES + 1):
        try:
            artist = network.get_artist(artist_name)
            items  = artist.get_top_tracks(limit=30)
            time.sleep(0.3)
            return [i.item for i in items if i.item]
        except Exception as e:
            if _is_rate_limit(e) and attempt < _MAX_RETRIES:
                log.warning("    Rate limit hit for artist '%s' — waiting 1s (attempt %d/%d)",
                            artist_name, attempt, _MAX_RETRIES)
                time.sleep(1)
                continue
            log.warning("    Artist '%s' failed: %s", artist_name, e)
            return []
    return []


# ── Per-language pipeline ──────────────────────────────────────────────────────

def fetch_language(
    network: pylast.LastFMNetwork,
    language: str,
    config: dict,
    seen: set[tuple],
) -> tuple[list[dict], int]:
    """Returns (rows, failed_count)."""
    rows: list[dict] = []
    failed = 0
    primary_tags = config["tags"]
    mood_subtags = config["moods"]
    artists      = config["artists"]

    log.info(f"\n{'═'*55}")
    log.info(f"  Language: {language}  (target: {TARGET_PER_LANGUAGE})")
    log.info(f"{'═'*55}")

    def _add_tracks(tracks: list, subtag: str) -> int:
        nonlocal failed
        added = 0
        for track in tracks:
            if len(rows) >= TARGET_PER_LANGUAGE:
                break
            try:
                key = (track.title.lower().strip(), track.artist.name.lower().strip())
                if key in seen:
                    continue
                seen.add(key)
                row = build_row(track, language, subtag)
                if row:
                    rows.append(row)
                    added += 1
            except Exception as e:
                log.warning("    Failed to process track '%s': %s", getattr(track, 'title', '?'), e)
                failed += 1
        return added

    # ── Phase 1: primary language tags ────────────────────────────────────────
    for tag_name in primary_tags:
        if len(rows) >= TARGET_PER_LANGUAGE:
            break
        log.info(f"  [P1] tag='{tag_name}'")
        tracks = fetch_by_tag(network, tag_name)
        added  = _add_tracks(tracks, tag_name)
        log.info(f"       +{added} added  (total: {len(rows)})")
        time.sleep(0.4)

    # ── Phase 2: mood sub-tags with language tag cross-check ──────────────────
    if len(rows) < TARGET_PER_LANGUAGE:
        log.info(f"  [P2] {TARGET_PER_LANGUAGE - len(rows)} more needed — mood sub-tags")
        for mood_tag in mood_subtags:
            if len(rows) >= TARGET_PER_LANGUAGE:
                break
            log.info(f"  [P2] mood='{mood_tag}'")
            tracks = fetch_by_tag(network, mood_tag)

            for track in tracks:
                if len(rows) >= TARGET_PER_LANGUAGE:
                    break
                key = (track.title.lower().strip(), track.artist.name.lower().strip())
                if key in seen:
                    continue

                # For Indian languages, verify language via track tags
                if language != "English":
                    tags_lower = {t.lower() for t in get_top_tags(track, limit=5)}
                    time.sleep(0.1)
                    if not (set(primary_tags) & tags_lower):
                        continue   # not confirmed as this language

                seen.add(key)
                row = build_row(track, language, mood_tag, fetch_tags=True)
                if row:
                    rows.append(row)

            log.info(f"       total: {len(rows)}")
            time.sleep(0.4)

    # ── Phase 3: artist-based fetch (backup for Indian languages) ─────────────
    if len(rows) < TARGET_PER_LANGUAGE and artists:
        log.info(f"  [P3] {TARGET_PER_LANGUAGE - len(rows)} more needed — artist fetch")
        for artist_name in artists:
            if len(rows) >= TARGET_PER_LANGUAGE:
                break
            log.info(f"  [P3] artist='{artist_name}'")
            tracks = fetch_by_artist(network, artist_name)
            # For artist-based, use "melody"/"love" subtag as mood hint
            # (most Indian film songs skew romantic)
            added  = _add_tracks(tracks, "melody")
            log.info(f"       +{added} added  (total: {len(rows)})")

    log.info(f"  ✓ {language}: {len(rows)} songs  (failed: {failed})\n")
    return rows[:TARGET_PER_LANGUAGE], failed


# ── Main ───────────────────────────────────────────────────────────────────────

def main() -> None:
    if not API_KEY or not API_SECRET:
        raise SystemExit(
            "ERROR: Invalid Last.fm API key.\n"
            "Check LASTFM_API_KEY in your .env file.\n"
            f"(Loaded from: {_env_path})"
        )

    log.info("Connecting to Last.fm…")
    try:
        network = pylast.LastFMNetwork(api_key=API_KEY, api_secret=API_SECRET)
        # Validate key with a cheap test call
        network.get_top_artists_chart(limit=1)
    except pylast.WSError as e:
        if "Invalid API key" in str(e) or "6" in str(getattr(e, "error_code", "")):
            raise SystemExit(
                "ERROR: Invalid Last.fm API key.\n"
                "Check LASTFM_API_KEY in your .env file.\n"
                f"Last.fm said: {e}"
            )
        log.warning("Last.fm auth check warning (non-fatal): %s", e)
    except Exception as e:
        log.warning("Could not validate Last.fm connection: %s", e)

    seen: set[tuple[str, str]] = set()
    all_rows: list[dict] = []
    total_failed = 0

    for language, config in LANGUAGE_CONFIG.items():
        rows, failed = fetch_language(network, language, config, seen)
        all_rows.extend(rows)
        total_failed += failed

    # ── Write CSV ──────────────────────────────────────────────────────────────
    OUTPUT_CSV.parent.mkdir(parents=True, exist_ok=True)
    with open(OUTPUT_CSV, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_COLUMNS)
        writer.writeheader()
        writer.writerows(all_rows)

    # ── Summary ────────────────────────────────────────────────────────────────
    lang_counts: Counter = Counter(r["language"] for r in all_rows)
    mood_counts: Counter = Counter()
    for r in all_rows:
        for m in r["moods"].split("|"):
            mood_counts[m] += 1

    print(f"\n{'═'*52}")
    print(f"  Total tracks      : {len(all_rows)}")
    print(f"  With duration     : {sum(1 for r in all_rows if r['duration_seconds'])}")
    print(f"  With album        : {sum(1 for r in all_rows if r['album'])}")
    print(f"  Unique singers    : {len({r['singer'] for r in all_rows})}")
    print(f"  Output            : {OUTPUT_CSV.resolve()}")
    print(f"{'═'*52}")

    print("\nLanguage breakdown:")
    for lang, count in lang_counts.most_common():
        bar = "█" * (count // 5)
        print(f"  {lang:<12} {count:>4}  {bar}")

    print("\nMood distribution:")
    for mood, count in mood_counts.most_common():
        bar = "█" * (count // 5)
        print(f"  {mood:<15} {count:>4}  {bar}")

    if total_failed:
        print(f"\n  Tracks failed (skipped): {total_failed}")

    print(f"\n✓ CSV written → {OUTPUT_CSV.resolve()}")
    print(f"\nNext steps:")
    print(f"  1. Verify:  python data/verify_moods.py --report")
    print(f"  2. Seed:    docker exec smriti_backend python -m backend.db.seed")


if __name__ == "__main__":
    main()