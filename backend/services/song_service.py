import logging
from datetime import datetime
from pathlib import Path
from typing import Optional

import boto3
from botocore.exceptions import BotoCoreError, ClientError
from fastapi import HTTPException
from sqlalchemy import or_
from sqlalchemy.exc import SQLAlchemyError
from sqlalchemy.orm import Session, joinedload, selectinload

from backend.config import settings
from backend.models.song import Song, SongLike, SongMood
from backend.models.lookup import Singer, Language, Genre, Mood

logger = logging.getLogger(__name__)


def _to_song_response(song: Song) -> dict:
    return {
        "song_id": song.song_id,
        "title": song.title,
        "singer_name": song.singer.singer_name if song.singer else "",
        "language_name": song.language.language_name if song.language else "",
        "genre_name": song.genre.genre_name if song.genre else "",
        "movie_name": song.movie_name,
        "album": song.album,
        "year": song.year,
        "duration_seconds": song.duration_seconds,
        "audio_file_path": song.audio_file_path,
        "moods": [sm.mood.mood_name for sm in (song.song_moods or [])],
        "is_liked": (song.song_like.status == "liked") if song.song_like else False,
    }


def _to_search_result(song: Song) -> dict:
    return {
        "song_id": song.song_id,
        "title": song.title,
        "singer_name": song.singer.singer_name if song.singer else "",
        "language_name": song.language.language_name if song.language else "",
        "genre_name": song.genre.genre_name if song.genre else "",
        "movie_name": song.movie_name,
        "duration_seconds": song.duration_seconds,
    }


def _load_full(db: Session):
    return db.query(Song).options(
        joinedload(Song.singer),
        joinedload(Song.language),
        joinedload(Song.genre),
        selectinload(Song.song_moods).joinedload(SongMood.mood),
        joinedload(Song.song_like),
    )


def get_all(db: Session) -> list:
    try:
        songs = _load_full(db).all()
        logger.info("get_all: returned %d songs", len(songs))
        return [_to_song_response(s) for s in songs]
    except SQLAlchemyError as e:
        logger.error("DB error in get_all: %s", e, exc_info=True)
        raise HTTPException(status_code=500, detail="Database error while fetching songs")


def get_by_id(song_id: int, db: Session) -> dict:
    try:
        song = _load_full(db).filter(Song.song_id == song_id).first()
        if not song:
            raise HTTPException(status_code=404, detail="Song not found")
        return _to_song_response(song)
    except HTTPException:
        raise
    except SQLAlchemyError as e:
        logger.error("DB error in get_by_id song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Database error while fetching song")


def search(
    q: str,
    language: Optional[str],
    genre: Optional[str],
    mood: Optional[str],
    db: Session,
) -> list:
    try:
        # Find matching song_ids via joins (avoids eager-load alias conflicts)
        id_query = db.query(Song.song_id).distinct()

        if q or language or genre or mood:
            id_query = (
                id_query.outerjoin(Singer, Song.singer_id == Singer.singer_id)
                .outerjoin(Language, Song.language_id == Language.language_id)
                .outerjoin(Genre, Song.genre_id == Genre.genre_id)
                .outerjoin(SongMood, Song.song_id == SongMood.song_id)
                .outerjoin(Mood, SongMood.mood_id == Mood.mood_id)
            )

        if q:
            id_query = id_query.filter(
                or_(
                    Song.title.ilike(f"%{q}%"),
                    Singer.singer_name.ilike(f"%{q}%"),
                    Genre.genre_name.ilike(f"%{q}%"),
                    Mood.mood_name.ilike(f"%{q}%"),
                    Language.language_name.ilike(f"%{q}%"),
                    Song.movie_name.ilike(f"%{q}%"),
                )
            )
        if language:
            id_query = id_query.filter(Language.language_name.ilike(f"%{language}%"))
        if genre:
            id_query = id_query.filter(Genre.genre_name.ilike(f"%{genre}%"))
        if mood:
            id_query = id_query.filter(Mood.mood_name.ilike(f"%{mood}%"))

        matching_ids = [row[0] for row in id_query.all()]

        songs = (
            db.query(Song)
            .options(
                joinedload(Song.singer),
                joinedload(Song.language),
                joinedload(Song.genre),
                selectinload(Song.song_moods).joinedload(SongMood.mood),
            )
            .filter(Song.song_id.in_(matching_ids))
            .all()
        )
        logger.info("search q=%s returned %d results", q, len(songs))
        return [_to_search_result(s) for s in songs]
    except SQLAlchemyError as e:
        logger.error("DB error in search q=%s: %s", q, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Database error during search")


def get_liked(db: Session) -> list:
    try:
        songs = (
            _load_full(db)
            .join(SongLike, Song.song_id == SongLike.song_id)
            .filter(SongLike.status == "liked")
            .all()
        )
        logger.info("get_liked: returned %d songs", len(songs))
        return [_to_song_response(s) for s in songs]
    except SQLAlchemyError as e:
        logger.error("DB error in get_liked: %s", e, exc_info=True)
        raise HTTPException(status_code=500, detail="Database error while fetching liked songs")


def like_song(song_id: int, db: Session) -> dict:
    return _upsert_like(song_id, "liked", db)


def dislike_song(song_id: int, db: Session) -> dict:
    return _upsert_like(song_id, "disliked", db)


def _upsert_like(song_id: int, status: str, db: Session) -> dict:
    try:
        song = db.query(Song).filter(Song.song_id == song_id).first()
        if not song:
            raise HTTPException(status_code=404, detail="Song not found")

        like = db.query(SongLike).filter(SongLike.song_id == song_id).first()
        if like:
            like.status = status
            like.updated_at = datetime.utcnow()
        else:
            like = SongLike(song_id=song_id, status=status)
            db.add(like)

        db.commit()
        logger.info("Song %d marked as %s", song_id, status)
        return {"status": status, "song_id": song_id}
    except HTTPException:
        raise
    except SQLAlchemyError as e:
        db.rollback()
        logger.error("DB error in _upsert_like song_id=%d status=%s: %s", song_id, status, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Database error while updating like status")


def get_stream_url(song_id: int, db: Session) -> str:
    try:
        song = db.query(Song).filter(Song.song_id == song_id).first()
        if not song:
            raise HTTPException(status_code=404, detail="Song not found")

        filename = Path(song.audio_file_path).name

        s3 = boto3.client(
            "s3",
            endpoint_url=f"https://{settings.r2_account_id}.r2.cloudflarestorage.com",
            aws_access_key_id=settings.r2_access_key_id,
            aws_secret_access_key=settings.r2_secret_access_key,
            region_name="auto",
        )

        url = s3.generate_presigned_url(
            ClientMethod="get_object",
            Params={"Bucket": settings.r2_bucket_name, "Key": filename},
            ExpiresIn=3600,
        )
        logger.info("Generated pre-signed URL for song_id=%d key=%s", song_id, filename)
        return url
    except HTTPException:
        raise
    except SQLAlchemyError as e:
        logger.error("DB error in get_stream_url song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Database error while fetching stream URL")
    except (BotoCoreError, ClientError) as e:
        logger.error("R2 error in get_stream_url song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to generate stream URL")
    except Exception as e:
        logger.error("Unexpected error in get_stream_url song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to generate stream URL")
