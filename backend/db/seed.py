"""
Seed script — reads CSVs and inserts songs into the DB.

Seeding order:
  1. data/csv/songs.csv        (our 8 hand-curated songs — always seeded)
  2. data/csv/lastfm_songs.csv (Last.fm fetched songs — seeded if file exists)

Skip logic: a song is skipped if its audio_file_path already exists in the DB.
This prevents duplicates when the script is re-run.

Per-row error handling: if one song fails, it is logged and skipped.
The seed never aborts because of a single bad row.

Summary printed at end:
  Seeded: 8, Skipped: 2, Failed: 1
  Failed rows: ['bad_title']

Run inside the backend container:
  docker exec smriti_backend python -m backend.db.seed
"""
import csv
import logging
from pathlib import Path
from typing import Optional

from sqlalchemy.orm import Session

from backend.db.database import SessionLocal
from backend.models.lookup import Language, Genre, Singer, MusicDirector, Actor, Mood
from backend.models.song import Song, SongMood

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

_DATA_DIR = Path(__file__).parent.parent.parent / "data" / "csv"
PRIMARY_CSV = _DATA_DIR / "songs.csv"
LASTFM_CSV = _DATA_DIR / "lastfm_songs.csv"


# ── get-or-create helpers (Rule 9) ───────────────────────────────────────────

def _get_or_create_language(name: str, db: Session) -> Language:
    obj = db.query(Language).filter_by(language_name=name).first()
    if not obj:
        obj = Language(language_name=name)
        db.add(obj)
        db.commit()
        db.refresh(obj)
    return obj


def _get_or_create_genre(name: str, db: Session) -> Genre:
    obj = db.query(Genre).filter_by(genre_name=name).first()
    if not obj:
        obj = Genre(genre_name=name)
        db.add(obj)
        db.commit()
        db.refresh(obj)
    return obj


def _get_or_create_singer(name: str, db: Session) -> Singer:
    obj = db.query(Singer).filter_by(singer_name=name).first()
    if not obj:
        obj = Singer(singer_name=name)
        db.add(obj)
        db.commit()
        db.refresh(obj)
    return obj


def _get_or_create_director(name: str, db: Session) -> MusicDirector:
    obj = db.query(MusicDirector).filter_by(director_name=name).first()
    if not obj:
        obj = MusicDirector(director_name=name)
        db.add(obj)
        db.commit()
        db.refresh(obj)
    return obj


def _get_or_create_actor(name: str, db: Session) -> Actor:
    obj = db.query(Actor).filter_by(actor_name=name).first()
    if not obj:
        obj = Actor(actor_name=name)
        db.add(obj)
        db.commit()
        db.refresh(obj)
    return obj


def _get_mood_by_name(name: str, db: Session) -> Optional[Mood]:
    return db.query(Mood).filter_by(mood_name=name.strip()).first()


# ── CSV loader ────────────────────────────────────────────────────────────────

def load_csv(filepath: Path) -> list[dict]:
    """Load any CSV matching the Smriti song template columns."""
    rows = []
    with open(filepath, newline="", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            rows.append(row)
    logger.info("Loaded %d rows from %s", len(rows), filepath.name)
    return rows


# ── Single-song inserter ──────────────────────────────────────────────────────

def _seed_row(row: dict, db: Session) -> str:
    """
    Insert one song row. Returns 'seeded' or 'skipped'.
    Skip condition: audio_file_path already exists in DB.
    Raises on unexpected DB errors — caller handles per-row try/except.
    """
    audio_path = row.get("audio_file_path", "").strip()
    if not audio_path:
        return "skipped"

    if db.query(Song).filter_by(audio_file_path=audio_path).first():
        return "skipped"

    title = row.get("title", "").strip()
    if not title:
        return "skipped"

    # ── Lookup table get-or-create ────────────────────────────────────────────
    language_name = row.get("language", "").strip() or "Unknown"
    language = _get_or_create_language(language_name, db)

    genre_name = row.get("genre", "").strip() or "Unknown"
    genre = _get_or_create_genre(genre_name, db)

    singer_name = row.get("singer", "").strip()
    if not singer_name:
        return "skipped"
    # Take only the primary singer (Last.fm sometimes returns multiple comma-separated)
    singer_name = singer_name.split(",")[0].strip()[:100]
    singer = _get_or_create_singer(singer_name, db)

    # music_director and actor are nullable — empty string → None
    director_name = row.get("music_director", "").strip()
    director = _get_or_create_director(director_name, db) if director_name else None

    actor_name = row.get("actor", "").strip()
    actor = _get_or_create_actor(actor_name, db) if actor_name else None

    # ── Nullable scalar fields ────────────────────────────────────────────────
    movie_name = row.get("movie_name", "").strip() or None   # nullable per schema
    album = row.get("album", "").strip() or None
    year_raw = row.get("year", "").strip()
    year = int(year_raw) if year_raw and year_raw.isdigit() else None
    duration_raw = row.get("duration_seconds", "0").strip()
    duration = int(duration_raw) if duration_raw and duration_raw.isdigit() else 0

    # ── Insert song ───────────────────────────────────────────────────────────
    song = Song(
        title=title,
        language_id=language.language_id,
        singer_id=singer.singer_id,
        director_id=director.director_id if director else None,
        actor_id=actor.actor_id if actor else None,
        genre_id=genre.genre_id,
        movie_name=movie_name,
        album=album,
        year=year,
        duration_seconds=duration,
        audio_file_path=audio_path,
    )
    db.add(song)
    db.commit()
    db.refresh(song)

    # ── Insert song_mood rows (pipe-separated) ────────────────────────────────
    moods_raw = row.get("moods", "").strip()
    if moods_raw:
        for mood_name in moods_raw.split("|"):
            mood = _get_mood_by_name(mood_name.strip(), db)
            if mood:
                exists = db.query(SongMood).filter_by(
                    song_id=song.song_id, mood_id=mood.mood_id
                ).first()
                if not exists:
                    db.add(SongMood(song_id=song.song_id, mood_id=mood.mood_id))
                db.commit()
            else:
                logger.warning("Mood not found in DB: '%s' (song: %s)", mood_name.strip(), title)

    logger.info("Seeded: %s — %s", singer_name, title)
    return "seeded"


# ── Main seeder ───────────────────────────────────────────────────────────────

def seed_csv(filepath: Path, db: Session) -> tuple[int, int, int, list[str]]:
    """Seed all rows from one CSV. Returns (seeded, skipped, failed, failed_titles).

    Per-row try/except: a single bad row is logged and skipped.
    The seed never aborts because of one bad row.
    """
    if not filepath.exists():
        logger.info("File not found, skipping: %s", filepath)
        return 0, 0, 0, []

    rows = load_csv(filepath)
    seeded = skipped = failed = 0
    failed_titles: list[str] = []

    for row in rows:
        title = row.get("title", "<unknown>").strip()
        try:
            result = _seed_row(row, db)
            if result == "seeded":
                seeded += 1
            else:
                skipped += 1
        except Exception as e:
            logger.error("Failed to seed row '%s': %s", title, e, exc_info=True)
            failed += 1
            failed_titles.append(title)
            db.rollback()  # roll back this row's partial work only

    return seeded, skipped, failed, failed_titles


def seed() -> None:
    db: Session = SessionLocal()
    try:
        total_seeded = total_skipped = total_failed = 0
        all_failed: list[str] = []

        # 1 — Always seed our 8 hand-curated songs first
        s, k, f, ft = seed_csv(PRIMARY_CSV, db)
        total_seeded += s
        total_skipped += k
        total_failed += f
        all_failed.extend(ft)
        logger.info("songs.csv → seeded %d, skipped %d, failed %d", s, k, f)

        # 2 — Seed Last.fm songs if the file exists
        s, k, f, ft = seed_csv(LASTFM_CSV, db)
        total_seeded += s
        total_skipped += k
        total_failed += f
        all_failed.extend(ft)
        if LASTFM_CSV.exists():
            logger.info("lastfm_songs.csv → seeded %d, skipped %d, failed %d", s, k, f)

        print(f"\nSeeded: {total_seeded}, Skipped: {total_skipped}, Failed: {total_failed}")
        if all_failed:
            print(f"Failed rows: {all_failed}")
        print()

    finally:
        db.close()


if __name__ == "__main__":
    seed()
