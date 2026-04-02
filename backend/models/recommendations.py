from sqlalchemy import Column, Integer, Float, ForeignKey, DateTime
from sqlalchemy.sql import func
from backend.db.database import Base


class RecommendationScore(Base):
    __tablename__ = "recommendation_scores"

    rec_id = Column(Integer, primary_key=True)
    song_id = Column(Integer, ForeignKey("song.song_id", ondelete="CASCADE"), unique=True)
    play_score = Column(Float, default=0.0)
    like_score = Column(Float, default=0.0)
    recency_score = Column(Float, default=0.0)
    completion_score = Column(Float, default=0.0)
    skip_penalty = Column(Float, default=0.0)
    final_score = Column(Float, default=0.0)
    rank = Column(Integer, default=0)
    scored_at = Column(DateTime, default=func.now())
