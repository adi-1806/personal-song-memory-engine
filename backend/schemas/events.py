from pydantic import BaseModel
from typing import Optional


class EventCreate(BaseModel):
    song_id: Optional[int] = None
    selected_mood_id: Optional[int] = None
    listening_duration: int = 0
    search_query: Optional[str] = None


class EventResponse(BaseModel):
    event_id: int
