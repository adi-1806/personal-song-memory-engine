# RULES.md — Coding Rules and Project Constraints

## These rules apply to every file in this project
No exceptions. No shortcuts. If unsure, ask before writing code.

---

## Project structure rules

### Backend
```
backend/
├── main.py          → ONLY: creates FastAPI app, mounts routers, CORS config
├── config.py        → ONLY: reads .env, exports `settings` object
├── db/
│   ├── database.py  → ONLY: engine, SessionLocal, get_db dependency
│   ├── init.sql     → ONLY: CREATE TABLE statements + mood seed
│   └── seed.py      → ONLY: reads songs.csv, inserts into DB
├── models/          → SQLAlchemy ORM table definitions
│   ├── lookup.py    → language, genre, singer, music_director, actor, mood
│   ├── song.py      → song, song_mood, song_like
│   ├── events.py    → user_event, search_history
│   ├── analytics.py → silver_events, gold_* tables
│   └── recommendations.py → recommendation_scores
├── schemas/         → Pydantic request/response models
│   ├── song.py      → SongBase, SongResponse, SongSearchResult
│   ├── events.py    → EventCreate, EventResponse
│   └── recommendations.py → RecommendationResponse
├── routers/         → one file = one feature area
│   ├── songs.py     → /songs/* endpoints
│   ├── events.py    → /events/* endpoints
│   ├── analytics.py → /analytics/* endpoints
│   └── recommendations.py → /recommendations/* endpoints
└── services/        → business logic only
    ├── song_service.py
    ├── event_service.py
    ├── analytics_service.py
    └── recommendation_service.py
```

### Frontend
```
frontend/src/
├── App.js           → routes only
├── components/      → reusable UI pieces (no API calls here)
│   ├── SearchBar.jsx
│   ├── SongCard.jsx
│   ├── Player.jsx
│   └── MoodSelector.jsx
├── pages/           → full page views (calls api.js, not fetch)
│   ├── HomePage.jsx
│   ├── LikedSongsPage.jsx
│   └── DashboardPage.jsx
└── services/
    └── api.js       → ALL axios/fetch calls live here. Nowhere else.
```

### Pipeline
```
pipeline/
├── bronze/bronze_task.py    → reads user_event, validates, no transformation
├── silver/silver_task.py    → cleans bronze, joins song metadata, writes silver
├── gold/gold_task.py        → aggregates silver into gold_* tables
└── scoring/scoring_script.py→ reads gold, calculates scores, writes recommendations
```

---

## Backend coding rules

### Rule 1 — Routers only route
```python
# CORRECT
@router.get("/search")
def search_songs(q: str, db: Session = Depends(get_db)):
    return song_service.search(q, db)

# WRONG — business logic in router
@router.get("/search")
def search_songs(q: str, db: Session = Depends(get_db)):
    results = db.query(Song).filter(Song.title.ilike(f"%{q}%")).all()
    return results
```

### Rule 2 — Config from one place only
```python
# CORRECT — in any file that needs config
from backend.config import settings
db_url = settings.database_url

# WRONG — reading .env directly
import os
db_url = os.getenv("POSTGRES_HOST")
```

### Rule 3 — Always use Pydantic schemas for responses
```python
# CORRECT
@router.get("/songs/{id}", response_model=SongResponse)
def get_song(id: int, db: Session = Depends(get_db)):
    return song_service.get_by_id(id, db)

# WRONG — returning raw ORM object
@router.get("/songs/{id}")
def get_song(id: int, db: Session = Depends(get_db)):
    return db.query(Song).filter(Song.song_id == id).first()
```

### Rule 4 — Always use dependency injection for DB session
```python
# CORRECT
def get_song(id: int, db: Session = Depends(get_db)):

# WRONG — creating session manually in router
def get_song(id: int):
    db = SessionLocal()
```

### Rule 5 — Services handle all DB queries
```python
# song_service.py — CORRECT
def search(query: str, db: Session) -> list[Song]:
    return db.query(Song)\
             .filter(Song.title.ilike(f"%{query}%"))\
             .all()
```

### Rule 6 — Never delete user_event rows
```python
# NEVER do this
db.query(UserEvent).delete()

# user_event is the permanent behaviour log
# It only grows — never shrinks
```

---

## Database rules

### Rule 7 — movie_name is always nullable
```python
# CORRECT — always handle None
movie = song.movie_name or "N/A"

# WRONG — assuming it exists
movie = song.movie_name.upper()  # crashes if None
```

### Rule 8 — Analytics tables written by pipeline only
FastAPI routers READ analytics tables. They never WRITE to them.
Only Airflow pipeline tasks write to silver_events and gold_* tables.
Only scoring_script.py writes to recommendation_scores.

### Rule 9 — Lookup tables never duplicated
When seeding a new singer/language/genre, always use get_or_create pattern:
```python
def get_or_create_singer(name: str, db: Session) -> Singer:
    singer = db.query(Singer).filter_by(singer_name=name).first()
    if not singer:
        singer = Singer(singer_name=name)
        db.add(singer)
        db.commit()
    return singer
```

---

## Frontend coding rules

### Rule 10 — All API calls in api.js
```javascript
// frontend/src/services/api.js — CORRECT
export const searchSongs = (query) =>
  axios.get(`/songs/search?q=${query}`);

// In a component — CORRECT
import { searchSongs } from '../services/api';
const results = await searchSongs(query);

// WRONG — fetch inside component
const results = await fetch(`http://localhost:8000/songs/search?q=${query}`);
```

### Rule 11 — Components don't know about the API
Components receive data as props or from a page-level call.
They never call api.js themselves — pages do.

### Rule 12 — Player state lives in one place
Audio playback state (current song, isPlaying, progress) lives
in a single Player component or React context.
Never duplicated across multiple components.

---

## Git commit rules

### Rule 13 — Commit messages follow this format
```
stage1: add song search endpoint
stage1: build React player component
stage2: log play events to user_event table
stage3: implement silver cleaning task
fix: handle null movie_name in song response
```

### Rule 14 — One logical change per commit
Do not commit 5 different features at once.
Each commit should be independently understandable.

### Rule 15 — Never commit these
- .env file (secrets)
- songs/ folder (MP3 files — too large)
- node_modules/
- __pycache__/
- pgdata/ (database files)

---

## Songs and CSV rules

### Rule 16 — Audio file naming convention
```
singer_title_language.mp3
```
- All lowercase
- No spaces (use underscores)
- No brackets, special characters, accents
- Examples:
  arijit_tum_hi_ho_hindi.mp3
  spb_nuvvostanante_telugu.mp3

### Rule 17 — CSV moods column format
Multiple moods separated by pipe:
```
romantic|sad|lonely
happy|energetic|party
```

### Rule 18 — duration_seconds must be integer
Convert mm:ss to seconds before inserting.
Example: 4:21 = (4 × 60) + 21 = 261

---

## General rules

### Rule 19 — No print() in production code
Use Python logging module:
```python
import logging
logger = logging.getLogger(__name__)
logger.info("Song seeded: %s", song.title)
```

### Rule 20 — Handle every None and empty case
The database has many nullable fields (movie_name, album, actor_id etc).
Always handle None gracefully. Never assume a field has a value.

### Rule 21 — CORS must allow React dev server
In backend/main.py:
```python
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],
    allow_methods=["*"],
    allow_headers=["*"],
)
```

### Rule 22 — Environment-aware config
All URLs, ports, credentials come from .env.
The app must work locally (Docker) and on Railway
by only changing .env values — zero code changes.
