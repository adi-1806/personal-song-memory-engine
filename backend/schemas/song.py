from pydantic import BaseModel
from typing import List, Optional


class SongResponse(BaseModel):
    song_id: int
    title: str
    singer_name: str
    language_name: str
    genre_name: str
    movie_name: Optional[str]
    album: Optional[str]
    year: Optional[int]
    duration_seconds: int
    audio_file_path: str
    moods: List[str]
    is_liked: bool


class SongDetailResponse(SongResponse):
    pass


class SongSearchResult(BaseModel):
    song_id: int
    title: str
    singer_name: str
    language_name: str
    genre_name: str
    movie_name: Optional[str]
    duration_seconds: int


class LikeResponse(BaseModel):
    status: str
    song_id: int
