import logging
from typing import List, Optional

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from backend.db.database import get_db
from backend.schemas.song import SongResponse, SongDetailResponse, SongSearchResult, LikeResponse
from backend.services import song_service

router = APIRouter(prefix="/songs", tags=["songs"])
logger = logging.getLogger(__name__)


# Static routes MUST come before /{song_id} to avoid path conflicts

@router.get("/", response_model=List[SongResponse])
def list_songs(db: Session = Depends(get_db)):
    try:
        return song_service.get_all(db)
    except HTTPException:
        raise
    except Exception as e:
        logger.error("Error in list_songs: %s", e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to fetch songs")


@router.get("/search", response_model=List[SongSearchResult])
def search_songs(
    q: str = "",
    language: Optional[str] = None,
    genre: Optional[str] = None,
    mood: Optional[str] = None,
    db: Session = Depends(get_db),
):
    try:
        return song_service.search(q, language, genre, mood, db)
    except HTTPException:
        raise
    except Exception as e:
        logger.error("Error in search_songs q=%s: %s", q, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Search failed")


@router.get("/liked", response_model=List[SongResponse])
def get_liked_songs(db: Session = Depends(get_db)):
    try:
        return song_service.get_liked(db)
    except HTTPException:
        raise
    except Exception as e:
        logger.error("Error in get_liked_songs: %s", e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to fetch liked songs")


@router.get("/stream/{song_id}")
def stream_song(song_id: int, db: Session = Depends(get_db)):
    try:
        return song_service.stream(song_id, db)
    except HTTPException:
        raise
    except Exception as e:
        logger.error("Error in stream_song song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to stream song")


@router.get("/{song_id}", response_model=SongDetailResponse)
def get_song(song_id: int, db: Session = Depends(get_db)):
    try:
        return song_service.get_by_id(song_id, db)
    except HTTPException:
        raise
    except Exception as e:
        logger.error("Error in get_song song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to fetch song")


@router.post("/{song_id}/like", response_model=LikeResponse)
def like_song(song_id: int, db: Session = Depends(get_db)):
    try:
        return song_service.like_song(song_id, db)
    except HTTPException:
        raise
    except Exception as e:
        logger.error("Error in like_song song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to like song")


@router.post("/{song_id}/dislike", response_model=LikeResponse)
def dislike_song(song_id: int, db: Session = Depends(get_db)):
    try:
        return song_service.dislike_song(song_id, db)
    except HTTPException:
        raise
    except Exception as e:
        logger.error("Error in dislike_song song_id=%d: %s", song_id, e, exc_info=True)
        raise HTTPException(status_code=500, detail="Failed to dislike song")
