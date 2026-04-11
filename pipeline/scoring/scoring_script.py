"""
pipeline/scoring/scoring_script.py — Scoring layer.

Reads gold_song_stats, computes a final_score per song, ranks songs,
and writes to recommendation_scores.

Rule: uses a single DB transaction — either all scores update or none do.
If gold_song_stats is empty, exits gracefully with a clear message.
"""
import logging
import sys
from datetime import datetime

from sqlalchemy.exc import SQLAlchemyError

from backend.db.database import SessionLocal
from backend.models.analytics import GoldSongStat
from backend.models.recommendations import RecommendationScore

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s | %(levelname)-8s | %(name)s | %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
)
logger = logging.getLogger(__name__)

# Scoring weights (must sum to 1.0)
W_PLAY       = 0.30
W_LIKE       = 0.40
W_COMPLETION = 0.10
W_SKIP       = 0.20   # penalty — subtracted


def _compute_score(stat: GoldSongStat) -> float:
    """Compute normalised final score in [0, 1]."""
    play_score       = min(stat.play_count / 10.0, 1.0) * W_PLAY
    like_score       = min(stat.like_count / 5.0,  1.0) * W_LIKE
    completion_score = (stat.completion_rate or 0.0)    * W_COMPLETION
    skip_penalty     = min(stat.skip_count / 10.0, 1.0) * W_SKIP
    raw = play_score + like_score + completion_score - skip_penalty
    return round(max(raw, 0.0), 4)  # clamp to ≥ 0


def run() -> None:
    start = datetime.utcnow()
    logger.info("Scoring started at %s", start.isoformat())
    db = SessionLocal()

    try:
        stats = db.query(GoldSongStat).all()

        if not stats:
            msg = (
                "No data to score yet. "
                "Run pipeline after collecting behaviour data."
            )
            logger.info(msg)
            print(msg)
            return

        # ── Compute scores ────────────────────────────────────────────────────
        scored: list[dict] = []
        for stat in stats:
            score = _compute_score(stat)
            scored.append({"song_id": stat.song_id, "score": score, "stat": stat})

        # Rank by descending score (rank 1 = best)
        scored.sort(key=lambda x: x["score"], reverse=True)

        now = datetime.utcnow()

        # ── Write all scores in one transaction — all or nothing ──────────────
        for rank, item in enumerate(scored, start=1):
            stat = item["stat"]
            rec  = db.query(RecommendationScore).filter_by(song_id=item["song_id"]).first()

            if rec:
                rec.play_score       = float(stat.play_count)
                rec.like_score       = float(stat.like_count)
                rec.skip_penalty     = float(stat.skip_count)
                rec.completion_score = float(stat.completion_rate or 0.0)
                rec.final_score      = item["score"]
                rec.rank             = rank
                rec.scored_at        = now
            else:
                db.add(RecommendationScore(
                    song_id          = item["song_id"],
                    play_score       = float(stat.play_count),
                    like_score       = float(stat.like_count),
                    skip_penalty     = float(stat.skip_count),
                    completion_score = float(stat.completion_rate or 0.0),
                    final_score      = item["score"],
                    rank             = rank,
                    scored_at        = now,
                ))

        db.commit()  # single commit — all or nothing
        logger.info(
            "Scoring complete at %s — %d songs ranked",
            now.isoformat(), len(scored),
        )

    except SQLAlchemyError as e:
        db.rollback()
        logger.error("Scoring DB error — rolled back: %s", e, exc_info=True)
        sys.exit(1)
    except Exception as e:
        db.rollback()
        logger.error("Scoring failed unexpectedly — rolled back: %s", e, exc_info=True)
        sys.exit(1)
    finally:
        db.close()
        logger.info("Scoring finished at %s", datetime.utcnow().isoformat())


if __name__ == "__main__":
    run()
