"""
data/fetch_lastfm.py — Standalone Last.fm track fetcher for Smriti.

Fetches up to 2000 tracks using tag-based and global strategies,
maps tags to our 15 moods, and writes output to data/csv/lastfm_songs.csv.

Run on host machine (NOT inside Docker):
  cd /path/to/smriti
  pip install pylast python-dotenv
  python data/fetch_lastfm.py

Requires LASTFM_API_KEY and LASTFM_API_SECRET in .env at project root.
"""
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

import requests
_orig_send = requests.Session.send
def _patched_send(self, req, **kwargs):
    kwargs["verify"] = False
    return _orig_send(self, req, **kwargs)
requests.Session.send = _patched_send

import csv
import logging
import os
import re
import time
from pathlib import Path

import pylast
from dotenv import load_dotenv

# ── Setup ────────────────────────────────────────────────────────────────────

logging.basicConfig(level=logging.INFO, format="%(asctime)s %(levelname)s %(message)s")
logger = logging.getLogger(__name__)

# Load .env from project root (two levels up from data/)
_env_path = Path(__file__).parent.parent / ".env"
load_dotenv(_env_path)

API_KEY = os.getenv("LASTFM_API_KEY", "")
API_SECRET = os.getenv("LASTFM_API_SECRET", "")

OUTPUT_CSV = Path(__file__).parent / "csv" / "lastfm_songs.csv"
TARGET = 2000
TRACKS_PER_TAG = 100

CSV_COLUMNS = [
    "title", "singer", "music_director", "actor", "genre",
    "language", "movie_name", "album", "year",
    "duration_seconds", "audio_file_path", "moods",
]

# ── Mood tag mapping ──────────────────────────────────────────────────────────

# Last.fm tag → our 15 valid mood names
TAG_TO_MOOD: dict[str, str] = {
    # happy
    "happy": "happy", "upbeat": "happy", "feel-good": "happy",
    "feelgood": "happy", "cheerful": "happy", "joyful": "feel good",
    # sad
    "sad": "sad", "melancholy": "sad", "heartbreak": "sad",
    "emotional": "sad", "heartbroken": "sad",
    # relaxed
    "ambient": "relaxed", "peaceful": "relaxed", "calm": "relaxed",
    "relaxed": "relaxed", "mellow": "relaxed",
    # sleepy
    "sleep": "sleepy", "sleepy": "sleepy", "lullaby": "sleepy",
    "sleeping": "sleepy",
    # romantic
    "romantic": "romantic", "love": "romantic", "romance": "romantic",
    "love songs": "romantic",
    # energetic
    "energetic": "energetic", "hype": "energetic", "power": "energetic",
    "adrenaline": "energetic", "pump up": "energetic",
    # devotional
    "devotional": "devotional", "spiritual": "devotional",
    "bhajan": "devotional", "prayer": "devotional", "gospel": "devotional",
    # focus
    "focus": "focus", "study": "focus", "concentration": "focus",
    "work": "focus", "instrumental": "focus",
    # nostalgic
    "nostalgic": "nostalgic", "nostalgia": "nostalgic", "retro": "nostalgic",
    "classic": "nostalgic", "throwback": "nostalgic", "oldies": "nostalgic",
    # lonely
    "lonely": "lonely", "alone": "lonely", "solitude": "lonely",
    "isolation": "lonely",
    # chill
    "chill": "chill", "lo-fi": "chill", "lofi": "chill",
    "laid-back": "chill", "chillout": "chill", "chillhop": "chill",
    # workout
    "workout": "workout", "gym": "workout", "running": "workout",
    "fitness": "workout", "exercise": "workout", "sport": "workout",
    # gaming
    "gaming": "gaming", "epic": "gaming", "action": "gaming",
    "game": "gaming", "video game": "gaming",
    # party
    "party": "party", "dance": "party", "club": "party",
    "festival": "party", "rave": "party", "edm": "party",
    # feel good
    "feel good": "feel good", "positive": "feel good",
    "good vibes": "feel good", "sunshine": "feel good",
}

# Last.fm tags that indicate language
LANGUAGE_TAGS: dict[str, str] = {
    "hindi": "Hindi",
    "bollywood": "Hindi",
    "telugu": "Telugu",
    "tollywood": "Telugu",
    "tamil": "Tamil",
    "kollywood": "Tamil",
    "english": "English",
    "punjabi": "Punjabi",
    "urdu": "Urdu",
    "kannada": "Kannada",
    "malayalam": "Malayalam",
}

# Mood-focused tags to search — 10 tags × 100 tracks = up to 1000 unique tracks
MOOD_TAGS_TO_FETCH = [
    "happy", "sad", "chill", "romantic", "energetic",
    "devotional", "nostalgic", "relaxed", "workout", "party",
]

# ── Helpers ───────────────────────────────────────────────────────────────────

def _clean(s: str) -> str:
    """Lowercase, strip special chars, replace spaces/hyphens with underscore."""
    s = s.lower().strip()
    s = re.sub(r"[^\w\s-]", "", s)
    s = re.sub(r"[\s\-]+", "_", s)
    return s[:60]  # cap length for filesystem sanity


def make_audio_path(singer: str, title: str) -> str:
    return f"/app/songs/{_clean(singer)}_{_clean(title)}.mp3"


def get_duration(track: pylast.Track) -> int:
    """Return duration in seconds; 0 if unavailable or API error."""
    try:
        ms = track.get_duration()
        return int(ms) // 1000 if ms else 0
    except Exception:
        return 0


def get_album_title(track: pylast.Track) -> str:
    """Return album title string; empty string if unavailable."""
    try:
        album = track.get_album()
        return album.title if album and album.title else ""
    except Exception:
        return ""


def get_track_tags(track: pylast.Track, limit: int = 5) -> list[str]:
    """Return list of tag name strings; empty list on error."""
    try:
        items = track.get_top_tags(limit=limit)
        return [item.item.name for item in items if item.item]
    except Exception:
        return []


def map_tags(tag_names: list[str]) -> tuple[str, str, str]:
    """
    Given a list of Last.fm tag names, return:
      (moods_pipe_str, language, genre)
    """
    moods: list[str] = []
    language = "Unknown"
    genre = ""

    for t in tag_names:
        t_lower = t.lower().strip()

        if t_lower in LANGUAGE_TAGS and language == "Unknown":
            language = LANGUAGE_TAGS[t_lower]

        if t_lower in TAG_TO_MOOD:
            m = TAG_TO_MOOD[t_lower]
            if m not in moods:
                moods.append(m)

        if not genre:
            # First tag that is reasonably genre-like becomes genre
            if len(t) > 1 and t_lower not in LANGUAGE_TAGS:
                genre = t.title()

    moods_str = "|".join(moods) if moods else "feel good"
    return moods_str, language, genre


def make_row(
    track: pylast.Track,
    fetch_tag: str,
    tag_names: list[str],
) -> dict:
    """Build a CSV row dict for one track."""
    title = (track.title or "").strip()
    singer = (track.artist.name or "").strip() if track.artist else ""
    if not title or not singer:
        return {}

    # Include fetch_tag in tag_names for mood mapping
    all_tags = list({t.lower() for t in [fetch_tag] + tag_names})
    moods_str, language, genre = map_tags(all_tags)

    duration = get_duration(track)
    album = get_album_title(track)

    return {
        "title": title,
        "singer": singer,
        "music_director": "",        # Last.fm does not have this
        "actor": "",                 # Last.fm does not have this
        "genre": genre or fetch_tag.title(),
        "language": language,
        "movie_name": "",            # Last.fm does not have this
        "album": album,
        "year": "",                  # Last.fm rarely provides this reliably
        "duration_seconds": duration,
        "audio_file_path": make_audio_path(singer, title),
        "moods": moods_str,
    }


# ── Fetch strategies ──────────────────────────────────────────────────────────

def fetch_by_tags(
    network: pylast.LastFMNetwork,
    seen: set,
    rows: list,
) -> None:
    """Strategy 1: top tracks per mood tag."""
    for tag_name in MOOD_TAGS_TO_FETCH:
        if len(rows) >= TARGET:
            break
        logger.info("Fetching tag: %s (have %d so far)", tag_name, len(rows))
        try:
            tag = network.get_tag(tag_name)
            items = tag.get_top_tracks(limit=TRACKS_PER_TAG)
        except Exception as e:
            logger.warning("Failed to fetch tag %s: %s", tag_name, e)
            continue

        for item in items:
            if len(rows) >= TARGET:
                break
            track = item.item
            key = (track.title.lower().strip(), track.artist.name.lower().strip())
            if key in seen:
                continue
            seen.add(key)

            # Get per-track tags (rate-limited: 0.25s sleep)
            track_tags = get_track_tags(track, limit=5)
            time.sleep(0.25)

            row = make_row(track, tag_name, track_tags)
            if row:
                rows.append(row)

        logger.info("After tag '%s': %d tracks collected", tag_name, len(rows))


def fetch_global_top(
    network: pylast.LastFMNetwork,
    seen: set,
    rows: list,
) -> None:
    """Strategy 2: global top tracks to fill remaining count."""
    remaining = TARGET - len(rows)
    if remaining <= 0:
        return

    logger.info("Fetching global top tracks to fill %d remaining slots…", remaining)

    # Get top artists then their top tracks (avoids single large paginated call)
    try:
        artist_items = network.get_top_artists(limit=60)
    except Exception as e:
        logger.warning("Failed to fetch top artists: %s", e)
        return

    for artist_item in artist_items:
        if len(rows) >= TARGET:
            break
        artist = artist_item.item
        try:
            track_items = artist.get_top_tracks(limit=20)
            time.sleep(0.2)
        except Exception as e:
            logger.warning("Failed to get tracks for %s: %s", artist.name, e)
            continue

        for ti in track_items:
            if len(rows) >= TARGET:
                break
            track = ti.item
            key = (track.title.lower().strip(), track.artist.name.lower().strip())
            if key in seen:
                continue
            seen.add(key)

            track_tags = get_track_tags(track, limit=5)
            time.sleep(0.25)

            row = make_row(track, "feel good", track_tags)
            if row:
                rows.append(row)

    logger.info("After global fill: %d tracks total", len(rows))


# ── Main ──────────────────────────────────────────────────────────────────────

def main() -> None:
    if not API_KEY or not API_SECRET:
        raise SystemExit(
            "ERROR: LASTFM_API_KEY or LASTFM_API_SECRET not set.\n"
            f"Loaded from: {_env_path}"
        )

    logger.info("Connecting to Last.fm API…")
    network = pylast.LastFMNetwork(api_key=API_KEY, api_secret=API_SECRET)

    seen: set[tuple[str, str]] = set()
    rows: list[dict] = []

    # Strategy 1 — tag-based
    fetch_by_tags(network, seen, rows)

    # Strategy 2 — global top artists/tracks to fill to TARGET
    if len(rows) < TARGET:
        fetch_global_top(network, seen, rows)

    # ── Write CSV ─────────────────────────────────────────────────────────────
    OUTPUT_CSV.parent.mkdir(parents=True, exist_ok=True)
    with open(OUTPUT_CSV, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_COLUMNS)
        writer.writeheader()
        writer.writerows(rows)

    # ── Summary ───────────────────────────────────────────────────────────────
    with_duration = sum(1 for r in rows if r["duration_seconds"] and int(r["duration_seconds"]) > 0)
    with_album = sum(1 for r in rows if r["album"])
    with_moods = sum(1 for r in rows if r["moods"] and r["moods"] != "feel good")
    unique_singers = len({r["singer"] for r in rows})

    print("\n" + "=" * 50)
    print(f"  Total tracks fetched   : {len(rows)}")
    print(f"  Tracks with duration   : {with_duration}")
    print(f"  Tracks with album      : {with_album}")
    print(f"  Tracks with moods      : {with_moods}")
    print(f"  Unique singers         : {unique_singers}")
    print(f"  Output file            : {OUTPUT_CSV.resolve()}")
    print("=" * 50 + "\n")


if __name__ == "__main__":
    main()
