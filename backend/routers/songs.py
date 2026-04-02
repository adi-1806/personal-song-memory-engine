from typing import List, Optional

from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session

from backend.db.database import get_db
from backend.schemas.song import SongResponse, SongDetailResponse, SongSearchResult, LikeResponse
from backend.services import song_service

router = APIRouter(prefix="/songs", tags=["songs"])


# Static routes MUST come before /{song_id} to avoid path conflicts
@router.get("/", response_model=List[SongResponse])
def list_songs(db: Session = Depends(get_db)):
    return song_service.get_all(db)


@router.get("/search", response_model=List[SongSearchResult])
def search_songs(
    q: str = "",
    language: Optional[str] = None,
    genre: Optional[str] = None,
    mood: Optional[str] = None,
    db: Session = Depends(get_db),
):
    return song_service.search(q, language, genre, mood, db)


@router.get("/liked", response_model=List[SongResponse])
def get_liked_songs(db: Session = Depends(get_db)):
    return song_service.get_liked(db)


@router.get("/stream/{song_id}")
def stream_song(song_id: int, db: Session = Depends(get_db)):
    return song_service.stream(song_id, db)


@router.get("/{song_id}", response_model=SongDetailResponse)
def get_song(song_id: int, db: Session = Depends(get_db)):
    return song_service.get_by_id(song_id, db)


@router.post("/{song_id}/like", response_model=LikeResponse)
def like_song(song_id: int, db: Session = Depends(get_db)):
    return song_service.like_song(song_id, db)


@router.post("/{song_id}/dislike", response_model=LikeResponse)
def dislike_song(song_id: int, db: Session = Depends(get_db)):
    return song_service.dislike_song(song_id, db)
