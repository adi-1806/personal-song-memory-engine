from sqlalchemy import Column, Integer, String, ForeignKey, DateTime
from sqlalchemy.sql import func
from backend.db.database import Base


class UserEvent(Base):
    __tablename__ = "user_event"

    event_id = Column(Integer, primary_key=True)
    song_id = Column(Integer, ForeignKey("song.song_id", ondelete="SET NULL"), nullable=True)
    event_type = Column(String(30), nullable=False)
    selected_mood_id = Column(Integer, ForeignKey("mood.mood_id", ondelete="SET NULL"), nullable=True)
    search_query = Column(String(300), nullable=True)
    listening_duration = Column(Integer, default=0)
    event_time = Column(DateTime, nullable=False, default=func.now())


class SearchHistory(Base):
    __tablename__ = "search_history"

    search_id = Column(Integer, primary_key=True)
    query = Column(String(300), nullable=False)
    result_count = Column(Integer, default=0)
    searched_at = Column(DateTime, nullable=False, default=func.now())
