"""
pipeline/gold/gold_task.py — Gold layer.

Aggregates silver_events into gold_song_stats (play counts, like counts,
skip counts, completion rate, etc.).

Rule: uses a single DB transaction — if the gold update fails, the entire
update is rolled back. Gold tables are never left in a partial state.
Logs: "Gold computed at {timestamp}"
"""
import logging
import sys
from datetime import datetime

from sqlalchemy import func
from sqlalchemy.exc import SQLAlchemyError

from backend.db.database import SessionLocal
from backend.models.analytics import SilverEvent, GoldSongStat

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s | %(levelname)-8s | %(name)s | %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
)
logger = logging.getLogger(__name__)


def run() -> None:
    start = datetime.utcnow()
    logger.info("Gold task started at %s", start.isoformat())
    db = SessionLocal()

    try:
        # ── Aggregate from silver_events ──────────────────────────────────────
        play_rows = (
            db.query(
                SilverEvent.song_id,
                func.count(SilverEvent.silver_id).label("play_count"),
                func.sum(
                    func.cast(SilverEvent.is_completed, db.bind.dialect.name == "postgresql"
                              and func.cast(SilverEvent.is_completed, func.Integer)
                              or SilverEvent.is_completed)
                ).label("complete_count"),
            )
            .filter(
                SilverEvent.song_id.isnot(None),
                SilverEvent.event_type == "play",
            )
            .group_by(SilverEvent.song_id)
            .all()
        )

        like_rows = (
            db.query(
                SilverEvent.song_id,
                func.count(SilverEvent.silver_id).label("like_count"),
            )
            .filter(
                SilverEvent.song_id.isnot(None),
                SilverEvent.event_type == "like",
            )
            .group_by(SilverEvent.song_id)
            .all()
        )

        skip_rows = (
            db.query(
                SilverEvent.song_id,
                func.count(SilverEvent.silver_id).label("skip_count"),
            )
            .filter(
                SilverEvent.song_id.isnot(None),
                SilverEvent.event_type == "skip",
            )
            .group_by(SilverEvent.song_id)
            .all()
        )

        if not play_rows and not like_rows and not skip_rows:
            logger.info("Gold task: no silver data to aggregate yet.")
            return

        # ── Build per-song stat map ───────────────────────────────────────────
        play_map  = {r.song_id: r.play_count for r in play_rows}
        like_map  = {r.song_id: r.like_count for r in like_rows}
        skip_map  = {r.song_id: r.skip_count for r in skip_rows}
        all_ids   = set(play_map) | set(like_map) | set(skip_map)

        now = datetime.utcnow()
        songs_updated = 0

        # ── Write gold in a single transaction — all or nothing ───────────────
        for song_id in all_ids:
            play_count   = play_map.get(song_id, 0)
            like_count   = like_map.get(song_id, 0)
            skip_count   = skip_map.get(song_id, 0)
            completion_rate = (
                round(play_map.get(song_id, 0) / play_count, 4)
                if play_count else 0.0
            )

            stat = db.query(GoldSongStat).filter_by(song_id=song_id).first()
            if stat:
                stat.play_count      = play_count
                stat.like_count      = like_count
                stat.skip_count      = skip_count
                stat.completion_rate = completion_rate
                stat.computed_at     = now
            else:
                db.add(GoldSongStat(
                    song_id=song_id,
                    play_count=play_count,
                    like_count=like_count,
                    skip_count=skip_count,
                    completion_rate=completion_rate,
                    computed_at=now,
                ))
            songs_updated += 1

        db.commit()  # single commit — all or nothing
        logger.info("Gold computed at %s — %d songs updated", now.isoformat(), songs_updated)

    except SQLAlchemyError as e:
        db.rollback()
        logger.error("Gold task DB error — rolled back: %s", e, exc_info=True)
        sys.exit(1)
    except Exception as e:
        db.rollback()
        logger.error("Gold task failed unexpectedly — rolled back: %s", e, exc_info=True)
        sys.exit(1)
    finally:
        db.close()
        logger.info("Gold task finished at %s", datetime.utcnow().isoformat())


if __name__ == "__main__":
    run()
