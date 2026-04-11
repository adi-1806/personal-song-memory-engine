"""
pipeline/silver/silver_task.py — Silver layer.

Reads user_event rows not yet in silver_events, enriches each row with
song metadata (singer, language, genre, movie, completion), and writes
to silver_events.

Rule: if a single row fails enrichment, log and skip it — never abort
the entire task for one bad row.
Logs: "Silver: processed X, skipped Y"
"""
import logging
import sys
from datetime import datetime, timedelta

from sqlalchemy.exc import SQLAlchemyError

from backend.db.database import SessionLocal
from backend.models.analytics import SilverEvent
from backend.models.events import UserEvent
from backend.models.song import Song

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s | %(levelname)-8s | %(name)s | %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
)
logger = logging.getLogger(__name__)

LOOKBACK_HOURS = 24


def run() -> None:
    start = datetime.utcnow()
    logger.info("Silver task started at %s", start.isoformat())
    db = SessionLocal()
    processed = skipped = 0

    try:
        cutoff = start - timedelta(hours=LOOKBACK_HOURS)

        # IDs already in silver — avoid re-processing
        existing_ids: set[int] = {
            row[0]
            for row in db.query(SilverEvent.event_id)
            .filter(SilverEvent.event_id.isnot(None))
            .all()
        }

        events = (
            db.query(UserEvent)
            .filter(UserEvent.event_time >= cutoff)
            .order_by(UserEvent.event_time)
            .all()
        )

        for ev in events:
            if ev.event_id in existing_ids:
                continue  # already enriched in a previous run

            try:
                song = None
                if ev.song_id:
                    song = (
                        db.query(Song)
                        .filter(Song.song_id == ev.song_id)
                        .first()
                    )

                is_completed = False
                if song and song.duration_seconds and ev.listening_duration:
                    is_completed = ev.listening_duration >= song.duration_seconds * 0.8

                silver = SilverEvent(
                    event_id=ev.event_id,
                    song_id=ev.song_id,
                    event_type=ev.event_type,
                    mood_id=ev.selected_mood_id,
                    language_name=(
                        song.language.language_name
                        if song and song.language else None
                    ),
                    singer_name=(
                        song.singer.singer_name
                        if song and song.singer else None
                    ),
                    genre_name=(
                        song.genre.genre_name
                        if song and song.genre else None
                    ),
                    movie_name=song.movie_name if song else None,
                    listening_duration=ev.listening_duration or 0,
                    is_completed=is_completed,
                    event_time=ev.event_time,
                )
                db.add(silver)
                db.flush()  # flush per row; commit in bulk at the end
                processed += 1

            except Exception as e:
                logger.error(
                    "Silver: failed to enrich event_id=%d: %s",
                    ev.event_id, e, exc_info=True,
                )
                db.rollback()
                skipped += 1

        db.commit()
        logger.info("Silver complete: processed=%d, skipped=%d", processed, skipped)

    except SQLAlchemyError as e:
        db.rollback()
        logger.error("Silver task DB error: %s", e, exc_info=True)
        sys.exit(1)
    except Exception as e:
        db.rollback()
        logger.error("Silver task failed unexpectedly: %s", e, exc_info=True)
        sys.exit(1)
    finally:
        db.close()
        logger.info("Silver task finished at %s", datetime.utcnow().isoformat())


if __name__ == "__main__":
    run()
