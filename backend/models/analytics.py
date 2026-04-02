from sqlalchemy import Column, Integer, String, Float, Boolean, ForeignKey, DateTime
from sqlalchemy.sql import func
from backend.db.database import Base


class SilverEvent(Base):
    __tablename__ = "silver_events"

    silver_id = Column(Integer, primary_key=True)
    event_id = Column(Integer, ForeignKey("user_event.event_id", ondelete="CASCADE"), nullable=True)
    song_id = Column(Integer, ForeignKey("song.song_id", ondelete="SET NULL"), nullable=True)
    event_type = Column(String(30), nullable=False)
    mood_id = Column(Integer, ForeignKey("mood.mood_id", ondelete="SET NULL"), nullable=True)
    language_name = Column(String(50), nullable=True)
    singer_name = Column(String(100), nullable=True)
    genre_name = Column(String(50), nullable=True)
    movie_name = Column(String(200), nullable=True)
    listening_duration = Column(Integer, default=0)
    is_completed = Column(Boolean, default=False)
    event_time = Column(DateTime, nullable=False)


class GoldSongStat(Base):
    __tablename__ = "gold_song_stats"

    stat_id = Column(Integer, primary_key=True)
    song_id = Column(Integer, ForeignKey("song.song_id", ondelete="CASCADE"), unique=True)
    play_count = Column(Integer, default=0)
    complete_count = Column(Integer, default=0)
    skip_count = Column(Integer, default=0)
    like_count = Column(Integer, default=0)
    dislike_count = Column(Integer, default=0)
    completion_rate = Column(Float, default=0.0)
    last_played_at = Column(DateTime, nullable=True)
    computed_at = Column(DateTime, default=func.now())


class GoldSingerStat(Base):
    __tablename__ = "gold_singer_stats"

    stat_id = Column(Integer, primary_key=True)
    singer_id = Column(Integer, ForeignKey("singer.singer_id", ondelete="CASCADE"), unique=True)
    total_plays = Column(Integer, default=0)
    total_likes = Column(Integer, default=0)
    total_skips = Column(Integer, default=0)
    computed_at = Column(DateTime, default=func.now())


class GoldMoodStat(Base):
    __tablename__ = "gold_mood_stats"

    stat_id = Column(Integer, primary_key=True)
    mood_id = Column(Integer, ForeignKey("mood.mood_id", ondelete="CASCADE"), unique=True)
    times_selected = Column(Integer, default=0)
    songs_played_under_mood = Column(Integer, default=0)
    computed_at = Column(DateTime, default=func.now())


class GoldLanguageStat(Base):
    __tablename__ = "gold_language_stats"

    stat_id = Column(Integer, primary_key=True)
    language_id = Column(Integer, ForeignKey("language.language_id", ondelete="CASCADE"), unique=True)
    total_plays = Column(Integer, default=0)
    total_likes = Column(Integer, default=0)
    total_skips = Column(Integer, default=0)
    computed_at = Column(DateTime, default=func.now())
