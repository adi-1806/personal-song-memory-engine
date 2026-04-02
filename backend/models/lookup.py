from sqlalchemy import Column, Integer, String
from backend.db.database import Base


class Language(Base):
    __tablename__ = "language"

    language_id = Column(Integer, primary_key=True)
    language_name = Column(String(50), unique=True, nullable=False)


class Genre(Base):
    __tablename__ = "genre"

    genre_id = Column(Integer, primary_key=True)
    genre_name = Column(String(50), unique=True, nullable=False)


class Singer(Base):
    __tablename__ = "singer"

    singer_id = Column(Integer, primary_key=True)
    singer_name = Column(String(100), unique=True, nullable=False)


class MusicDirector(Base):
    __tablename__ = "music_director"

    director_id = Column(Integer, primary_key=True)
    director_name = Column(String(100), unique=True, nullable=False)


class Actor(Base):
    __tablename__ = "actor"

    actor_id = Column(Integer, primary_key=True)
    actor_name = Column(String(100), unique=True, nullable=False)


class Mood(Base):
    __tablename__ = "mood"

    mood_id = Column(Integer, primary_key=True)
    mood_name = Column(String(50), unique=True, nullable=False)
