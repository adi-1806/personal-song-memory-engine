# API.md — FastAPI Endpoints Reference

## Base URL
- Local: http://localhost:8000
- All endpoints return JSON unless streaming audio

## API design principles
- RESTful — nouns for resources, HTTP verbs for actions
- Every endpoint has a Pydantic response_model
- DB session injected via Depends(get_db)
- Business logic in services/ not routers/
- Errors return standard HTTPException with clear messages

---

## Songs router — /songs

### GET /songs/
List all songs with basic metadata.
```
Response: List[SongResponse]
Stage: 1
```

### GET /songs/search
Search songs by any metadata field.
```
Query params:
  q: str          → search term (matches title, singer, genre, mood, language, movie)
  language: str   → filter by language name (optional)
  genre: str      → filter by genre name (optional)
  mood: str       → filter by mood name (optional)

Response: List[SongSearchResult]
Stage: 1

Side effect: writes to search_history table (Stage 2)
```

### GET /songs/{song_id}
Fetch full details of a single song including moods.
```
Path params:
  song_id: int

Response: SongDetailResponse
Stage: 1
```

### GET /songs/stream/{song_id}
Stream the MP3 audio file.
```
Path params:
  song_id: int

Response: StreamingResponse (audio/mpeg)
Headers: Accept-Ranges, Content-Length
Stage: 1
```

### POST /songs/{song_id}/like
Like a song. Upserts song_like table.
```
Path params:
  song_id: int

Response: { "status": "liked", "song_id": int }
Stage: 1
```

### POST /songs/{song_id}/dislike
Dislike a song. Upserts song_like table.
```
Path params:
  song_id: int

Response: { "status": "disliked", "song_id": int }
Stage: 1
```

### GET /songs/liked
All songs the user has liked.
```
Response: List[SongResponse]
Stage: 1
```

### GET /songs/recent
Recently played songs (reads user_event table).
```
Query params:
  limit: int = 10

Response: List[SongResponse]
Stage: 2
```

---

## Events router — /events
All event endpoints write to user_event table.
Called silently by React — user does not see these calls.

### POST /events/play
Log that a song started playing.
```
Body: { "song_id": int, "selected_mood_id": int | null }
Response: { "event_id": int }
Stage: 2
```

### POST /events/pause
Log that a song was paused.
```
Body: { "song_id": int, "listening_duration": int }
Response: { "event_id": int }
Stage: 2
```

### POST /events/complete
Log that a song played to the end.
```
Body: { "song_id": int, "listening_duration": int }
Response: { "event_id": int }
Stage: 2
```

### POST /events/skip
Log that a song was skipped.
```
Body: { "song_id": int, "listening_duration": int }
Response: { "event_id": int }
Stage: 2
```

### POST /events/mood
Log that user selected a mood during playback.
```
Body: { "song_id": int | null, "mood_id": int }
Response: { "event_id": int }
Stage: 2
```

---

## Analytics router — /analytics
All endpoints READ from gold_* tables.
Only return data — never write anything.

### GET /analytics/top-songs
Most played songs based on gold_song_stats.
```
Query params:
  limit: int = 10

Response: List[TopSongResponse]
Stage: 3
```

### GET /analytics/top-singers
Favourite singers by play count.
```
Query params:
  limit: int = 5

Response: List[TopSingerResponse]
Stage: 3
```

### GET /analytics/top-moods
Most selected moods during listening.
```
Response: List[TopMoodResponse]
Stage: 3
```

### GET /analytics/top-languages
Languages listened to most.
```
Response: List[TopLanguageResponse]
Stage: 3
```

### GET /analytics/top-genres
Favourite genres by play count.
```
Response: List[TopGenreResponse]
Stage: 3
```

### GET /analytics/listening-trend
Songs listened per day over last 30 days.
```
Response: List[{ "date": str, "play_count": int }]
Stage: 3
```

---

## Recommendations router — /recommendations
All endpoints READ from recommendation_scores table.

### GET /recommendations/
Top 10 personalised songs ranked by final_score.
```
Query params:
  limit: int = 10

Response: List[RecommendationResponse]
Stage: 4
```

### GET /recommendations/by-mood/{mood_id}
Top songs for a specific mood based on personal history.
```
Path params:
  mood_id: int

Response: List[RecommendationResponse]
Stage: 4
```

### GET /recommendations/by-singer/{singer_id}
Top songs from a specific singer based on personal preference.
```
Path params:
  singer_id: int

Response: List[RecommendationResponse]
Stage: 4
```

---

## Pydantic schemas reference

### SongResponse
```python
class SongResponse(BaseModel):
    song_id: int
    title: str
    singer_name: str
    language_name: str
    genre_name: str
    movie_name: str | None
    album: str | None
    year: int | None
    duration_seconds: int
    audio_file_path: str
    moods: List[str]
    is_liked: bool
```

### SongSearchResult
```python
class SongSearchResult(BaseModel):
    song_id: int
    title: str
    singer_name: str
    language_name: str
    genre_name: str
    movie_name: str | None
    duration_seconds: int
```

### EventCreate
```python
class EventCreate(BaseModel):
    song_id: int | None
    selected_mood_id: int | None = None
    listening_duration: int = 0
    search_query: str | None = None
```

### RecommendationResponse
```python
class RecommendationResponse(BaseModel):
    song_id: int
    title: str
    singer_name: str
    final_score: float
    rank: int
    play_count: int
    like_count: int
```

---

## Error handling standard
```python
# Not found
raise HTTPException(status_code=404, detail="Song not found")

# Bad request
raise HTTPException(status_code=400, detail="Invalid mood_id")

# File not found (audio)
raise HTTPException(status_code=404, detail="Audio file not found on server")
```

## Health check
### GET /health
```
Response: { "status": "ok", "database": "connected" }
```
Always implemented. Used by Docker and Railway to verify the service is up.
