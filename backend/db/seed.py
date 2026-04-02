"""
Seed script — reads data/csv/songs.csv and inserts all songs into the DB.
Run once after Docker is up:
  docker exec songmemory_backend python -m backend.db.seed
"""
import csv
import logging
import os
from typing import Optional

from sqlalchemy.orm import Session

from backend.db.database import SessionLocal
from backend.models.lookup import Language, Genre, Singer, MusicDirector, Actor, Mood
from backend.models.song import Song, SongMood

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

CSV_PATH = os.path.join(os.path.dirname(__file__), "..", "..", "data", "csv", "songs.csv")


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


# ── main seeder ──────────────────────────────────────────────────────────────

def seed():
    db: Session = SessionLocal()
    try:
        csv_path = os.path.abspath(CSV_PATH)
        logger.info("Reading CSV: %s", csv_path)

        with open(csv_path, newline="", encoding="utf-8") as f:
            reader = csv.DictReader(f)
            for row in reader:
                title = row["title"].strip()

                # Skip if already seeded
                existing = db.query(Song).filter_by(title=title).first()
                if existing:
                    logger.info("Already exists, skipping: %s", title)
                    continue

                language = _get_or_create_language(row["language"].strip(), db)
                genre = _get_or_create_genre(row["genre"].strip(), db)
                singer = _get_or_create_singer(row["singer"].strip(), db)

                director_name = row.get("music_director", "").strip()
                director = _get_or_create_director(director_name, db) if director_name else None

                actor_name = row.get("actor", "").strip()
                actor = _get_or_create_actor(actor_name, db) if actor_name else None

                # Nullable fields — empty string becomes None
                movie_name = row.get("movie_name", "").strip() or None
                album = row.get("album", "").strip() or None
                year_raw = row.get("year", "").strip()
                year = int(year_raw) if year_raw else None
                duration = int(row.get("duration_seconds", 0) or 0)

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
                    audio_file_path=row["audio_file_path"].strip(),
                )
                db.add(song)
                db.commit()
                db.refresh(song)
                logger.info("Seeded song: %s (id=%d)", title, song.song_id)

                # Seed song_mood rows (pipe-separated moods)
                moods_raw = row.get("moods", "").strip()
                if moods_raw:
                    for mood_name in moods_raw.split("|"):
                        mood = _get_mood_by_name(mood_name.strip(), db)
                        if mood:
                            existing_sm = (
                                db.query(SongMood)
                                .filter_by(song_id=song.song_id, mood_id=mood.mood_id)
                                .first()
                            )
                            if not existing_sm:
                                db.add(SongMood(song_id=song.song_id, mood_id=mood.mood_id))
                            db.commit()
                        else:
                            logger.warning("Mood not found in DB: %s", mood_name.strip())

        logger.info("Seeding complete.")
    finally:
        db.close()


if __name__ == "__main__":
    seed()
