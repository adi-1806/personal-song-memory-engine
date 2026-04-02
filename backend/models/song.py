from sqlalchemy import Column, Integer, String, ForeignKey, DateTime, UniqueConstraint
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from backend.db.database import Base


class Song(Base):
    __tablename__ = "song"

    song_id = Column(Integer, primary_key=True)
    title = Column(String(200), nullable=False)
    language_id = Column(Integer, ForeignKey("language.language_id"))
    singer_id = Column(Integer, ForeignKey("singer.singer_id"))
    director_id = Column(Integer, ForeignKey("music_director.director_id"))
    actor_id = Column(Integer, ForeignKey("actor.actor_id"))
    genre_id = Column(Integer, ForeignKey("genre.genre_id"))
    movie_name = Column(String(200), nullable=True)
    album = Column(String(200), nullable=True)
    year = Column(Integer, nullable=True)
    duration_seconds = Column(Integer, nullable=False, default=0)
    audio_file_path = Column(String(500), nullable=False)
    created_at = Column(DateTime, default=func.now())

    language = relationship("Language")
    singer = relationship("Singer")
    director = relationship("MusicDirector")
    actor = relationship("Actor")
    genre = relationship("Genre")
    song_moods = relationship("SongMood", back_populates="song")
    song_like = relationship("SongLike", uselist=False, back_populates="song")


class SongMood(Base):
    __tablename__ = "song_mood"

    song_mood_id = Column(Integer, primary_key=True)
    song_id = Column(Integer, ForeignKey("song.song_id", ondelete="CASCADE"), nullable=False)
    mood_id = Column(Integer, ForeignKey("mood.mood_id", ondelete="CASCADE"), nullable=False)

    __table_args__ = (UniqueConstraint("song_id", "mood_id"),)

    song = relationship("Song", back_populates="song_moods")
    mood = relationship("Mood")


class SongLike(Base):
    __tablename__ = "song_like"

    like_id = Column(Integer, primary_key=True)
    song_id = Column(Integer, ForeignKey("song.song_id", ondelete="CASCADE"), unique=True)
    status = Column(String(10), nullable=False)
    updated_at = Column(DateTime, default=func.now())

    song = relationship("Song", back_populates="song_like")
