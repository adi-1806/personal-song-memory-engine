"""
pipeline/bronze/bronze_task.py — Bronze layer.

Reads user_event rows from the last 24 hours, validates event_type,
and reports counts. No data transformation — validation only.

Rule: never fails entirely for a single bad row.
"""
import logging
import sys
from datetime import datetime, timedelta

from sqlalchemy.exc import SQLAlchemyError

from backend.db.database import SessionLocal
from backend.models.events import UserEvent

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s | %(levelname)-8s | %(name)s | %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
)
logger = logging.getLogger(__name__)

ALLOWED_EVENT_TYPES = {
    "play", "pause", "skip", "like", "dislike",
    "search", "mood_select", "complete",
}
LOOKBACK_HOURS = 24


def run() -> None:
    start = datetime.utcnow()
    logger.info("Bronze task started at %s", start.isoformat())
    db = SessionLocal()

    try:
        cutoff = start - timedelta(hours=LOOKBACK_HOURS)
        events = (
            db.query(UserEvent)
            .filter(UserEvent.event_time >= cutoff)
            .order_by(UserEvent.event_time)
            .all()
        )

        valid = invalid = 0
        invalid_ids: list[int] = []

        for ev in events:
            try:
                if ev.event_type not in ALLOWED_EVENT_TYPES:
                    logger.warning(
                        "Bronze: invalid event_type='%s' (event_id=%d) — skipping",
                        ev.event_type, ev.event_id,
                    )
                    invalid += 1
                    invalid_ids.append(ev.event_id)
                else:
                    valid += 1
            except Exception as e:
                logger.error(
                    "Bronze: error processing event_id=%s: %s",
                    getattr(ev, "event_id", "?"), e, exc_info=True,
                )
                invalid += 1

        logger.info(
            "Bronze complete: total=%d, valid=%d, invalid=%d",
            len(events), valid, invalid,
        )
        if invalid_ids:
            logger.warning("Bronze: invalid event IDs: %s", invalid_ids)

    except SQLAlchemyError as e:
        logger.error("Bronze task DB connection error: %s", e, exc_info=True)
        sys.exit(1)
    except Exception as e:
        logger.error("Bronze task failed unexpectedly: %s", e, exc_info=True)
        sys.exit(1)
    finally:
        db.close()
        logger.info("Bronze task finished at %s", datetime.utcnow().isoformat())


if __name__ == "__main__":
    run()
