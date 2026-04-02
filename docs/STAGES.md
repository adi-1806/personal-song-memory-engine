# STAGES.md — 4 Build Stages

## How stages work
Build stage by stage. Do NOT build Stage 2 features during Stage 1.
Each stage is independently testable before moving to the next.
The app grows incrementally — not all at once.

---

## Stage 1 — Basic music app
**Goal:** A fully working music player with search, play, pause,
skip forward/backward, like/dislike, and view liked songs.

### What gets built
**Backend (FastAPI):**
- `GET  /songs/`                → list all songs
- `GET  /songs/search?q=`       → search by title/singer/genre/mood/language/movie
- `GET  /songs/{id}`            → fetch single song details
- `GET  /songs/stream/{id}`     → stream MP3 file
- `POST /songs/{id}/like`       → like a song
- `POST /songs/{id}/dislike`    → dislike a song
- `GET  /songs/liked`           → all liked songs

**Database:**
- All lookup tables populated (language, genre, singer, director, actor, mood)
- All 15 moods seeded
- song table seeded from data/csv/songs.csv
- song_mood table seeded from CSV moods column

**Frontend (React):**
- Homepage with search bar, mood cards, recent songs section
- Search results page
- HTML5 audio player (play, pause, skip forward, skip backward)
- Like / dislike button on player
- Liked songs page

**Infrastructure:**
- docker-compose.yml with postgres + pgadmin + backend
- backend/db/init.sql creates all 17 tables
- backend/db/seed.py seeds songs from CSV
- .env configured
- React app running on port 3000

### Stage 1 is done when
- You can search a song and it appears
- You can click play and hear the audio
- You can like a song and see it in liked songs page
- You can skip forward and backward between songs
- All 8 songs are in the database

### What does NOT belong in Stage 1
- No event logging (that is Stage 2)
- No mood selection during playback (Stage 2)
- No dashboards (Stage 3)
- No recommendations (Stage 4)
- No Airflow DAG runs (Stage 3)

---

## Stage 2 — User behaviour tracking
**Goal:** Capture and store every user action permanently.
The app looks the same to the user — the difference is invisible
background tracking.

### What gets built
**Backend (FastAPI):**
- `POST /events/play`           → log play event
- `POST /events/pause`          → log pause event
- `POST /events/complete`       → log song completed
- `POST /events/skip`           → log song skipped
- `POST /events/mood`           → log mood selection
- `GET  /songs/recent`          → recently played songs (from user_event)

**Database:**
- user_event table receives all events (Bronze)
- search_history table receives search queries
- All data persists permanently via Docker volume

**Frontend (React):**
- Mood selector appears during playback
- Player sends events silently to backend on every action
- Recently played section on homepage (reads from user_event)

### Stage 2 is done when
- Every play/pause/skip/like/dislike writes a row to user_event
- Every search writes a row to search_history
- Mood selection during playback writes to user_event
- Data survives Docker restart (volume working)
- You can see rows in pgAdmin growing over days

### Important note on data collection
Do NOT move to Stage 3 until you have used the app naturally
for several days and have meaningful data in user_event.
The more data, the better the analysis and recommendations.

---

## Stage 3 — Data analysis and behaviour dashboards
**Goal:** Analyse collected behaviour data and show meaningful
patterns in a dashboard.

### What gets built
**Pipeline (Airflow):**
- `daily_pipeline_dag.py` wires 3 tasks in sequence:
  1. bronze_task.py  → validates user_event rows
  2. silver_task.py  → cleans + enriches → silver_events
  3. gold_task.py    → aggregates → gold_* tables

**Backend (FastAPI):**
- `GET /analytics/top-songs`     → most played songs
- `GET /analytics/top-singers`   → favourite singers
- `GET /analytics/top-moods`     → most selected moods
- `GET /analytics/top-languages` → languages listened most
- `GET /analytics/top-genres`    → favourite genres
- `GET /analytics/recent-trend`  → listening trend over time

**Frontend (React):**
- Dashboard page with charts/cards showing:
  - Which language you listen to most
  - Your favourite singer
  - How many songs per language
  - Most used moods
  - Songs listened per day trend

### Stage 3 is done when
- Airflow DAG runs successfully end to end
- gold_* tables have data
- Dashboard page shows real charts from your behaviour
- You can clearly see your listening patterns

---

## Stage 4 — Personalized recommendation engine
**Goal:** Show top 10 personalised song recommendations on
the homepage based on your listening history.

### What gets built
**Pipeline:**
- `scoring_script.py` runs after gold task:
  - Reads gold_song_stats
  - Applies scoring formula
  - Writes to recommendation_scores

**Scoring formula:**
```
final_score = (play_count    × 0.35)
            + (like_count    × 0.30)
            + (recency_score × 0.20)
            + (completion_rate × 0.10)
            − (skip_count   × 0.15)
```
Recency score = 1.0 if played in last 7 days,
                0.5 if played in last 30 days,
                0.1 if older

**Backend (FastAPI):**
- `GET /recommendations/`         → top 10 ranked songs
- `GET /recommendations/by-mood/{mood}` → top songs for a mood
- `GET /recommendations/by-singer/{id}` → top songs by fav singer

**Frontend (React):**
- Homepage shows "For You" section with top 10
- Mood-based recommendation cards
- Recommendations update daily after Airflow runs

### Stage 4 is done when
- recommendation_scores table has ranked data
- Homepage shows personalised top 10
- Recommendations are visibly influenced by your listening history
- Feedback loop works: new plays → next day better recommendations

---

## Stage progression rules
- Complete and test each stage before starting the next
- Every stage gets its own git commit (or multiple commits)
- Never mix features from different stages in the same commit
- Document what changed in each commit message clearly
