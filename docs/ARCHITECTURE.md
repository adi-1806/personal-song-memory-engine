# ARCHITECTURE.md — System Design

## Problem being solved
Existing music apps (Spotify, YouTube Music) return generic mood-based
recommendations — "80s sad songs", "popular playlists". They understand
common moods but not YOUR personal version of a mood.

This app captures how YOU interact with songs over time and recommends
based on your own listening memory.

## Core concept
Song Metadata + User Behaviour + User Context (Mood) = Personal Music Memory

## Tech stack

| Layer          | Tool                  | Purpose                                 |
|----------------|-----------------------|-----------------------------------------|
| Frontend       | React                 | Web UI, HTML5 audio player              |
| Backend        | FastAPI (Python 3.11) | REST APIs, MP3 streaming                |
| Database       | PostgreSQL 15         | All data storage — 4 schema groups      |
| Orchestration  | Apache Airflow        | Daily Bronze→Silver→Gold pipeline       |
| Containerisation| Docker Compose       | Runs all services locally               |
| Deployment     | Railway               | Cloud deployment target                 |

## What is NOT used (and why)
- No Kafka — overkill for single user, 1000 songs
- No Spark — replaced by Python + Airflow + SQL
- No Databricks — replaced by PostgreSQL schemas
- No AWS/GCP/Azure — fully local + Railway
- No authentication — single user only
- No ML models — rule-based scoring only (for now)

## System architecture — 4 layers

```
[ React Frontend — port 3000 ]
         ↕ HTTP REST
[ FastAPI Backend — port 8000 ]
         ↕ SQL / SQLAlchemy
[ PostgreSQL — port 5432 ]
  ├── Lookup tables       (language, genre, singer, director, actor, mood)
  ├── Operational tables  (song, song_mood, song_like, user_event, search_history)
  ├── Analytics tables    (silver_events, gold_song_stats, gold_singer_stats,
  │                        gold_mood_stats, gold_language_stats)
  └── Recommendation      (recommendation_scores)
         ↕ reads/writes
[ Airflow DAG — port 8080 ]
  └── Daily: user_event → silver → gold → scoring script
```

## Data flow

### Stage 1 — User plays a song
```
User clicks play
  → React calls GET /songs/stream/{id}
  → FastAPI reads MP3 from /songs folder
  → Streams audio to browser
  → React HTML5 player plays it
```

### Stage 2 — Event captured
```
User action (play/pause/like/skip/mood)
  → React calls POST /events/
  → FastAPI writes to user_event table (Bronze)
  → Stored permanently — never deleted
```

### Stage 3 — Daily pipeline (Airflow)
```
Airflow DAG triggers at midnight
  → Bronze task: validate user_event rows
  → Silver task: clean + enrich with song metadata
  → Gold task: aggregate stats per song/singer/mood/language
  → Dashboard APIs read from gold tables
```

### Stage 4 — Recommendations
```
Airflow triggers scoring script after gold task
  → Python reads gold_song_stats
  → Calculates: play_score + like_score + recency_score
               + completion_score − skip_penalty
  → Writes ranked results to recommendation_scores
  → React homepage calls GET /recommendations/
  → Shows top 10 personalised songs
```

## Docker services and ports

| Service              | Container name          | Port  |
|----------------------|-------------------------|-------|
| PostgreSQL           | songmemory_postgres     | 5432  |
| pgAdmin              | songmemory_pgadmin      | 5050  |
| FastAPI backend      | songmemory_backend      | 8000  |
| Airflow              | songmemory_airflow      | 8080  |
| React (dev server)   | runs locally via npm    | 3000  |

## Volumes (data persistence)
- `pgdata` — PostgreSQL data, survives container restarts
- `airflow_logs` — Airflow task logs
- `./songs` — MP3 files mounted into backend container
- User behaviour data is NEVER deleted between sessions

## Deployment target
Docker Compose locally → Railway for cloud deployment.
No code changes needed between local and Railway —
only connection strings in .env change.
