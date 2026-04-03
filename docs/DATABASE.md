# DATABASE.md — Complete Schema Reference

## Overview
- Total tables: 17
- Database name: smriti
- PostgreSQL version: 15
- All tables live in the default `public` schema
- Init file: `backend/db/init.sql`
- Seed file: `backend/db/seed.py`

---

## Group 1 — Lookup tables (6 tables)
Static reference data. Seeded once. Rarely changes.

### language
| Column        | Type         | Constraints        |
|---------------|--------------|--------------------|
| language_id   | SERIAL       | PK                 |
| language_name | VARCHAR(50)  | UNIQUE, NOT NULL   |

Examples: Hindi, Telugu, Tamil, English

### genre
| Column     | Type        | Constraints      |
|------------|-------------|------------------|
| genre_id   | SERIAL      | PK               |
| genre_name | VARCHAR(50) | UNIQUE, NOT NULL |

Examples: Romantic, Sad, Party, Devotional, Pop, Folk

### singer
| Column      | Type         | Constraints      |
|-------------|--------------|------------------|
| singer_id   | SERIAL       | PK               |
| singer_name | VARCHAR(100) | UNIQUE, NOT NULL |

### music_director
| Column        | Type         | Constraints      |
|---------------|--------------|------------------|
| director_id   | SERIAL       | PK               |
| director_name | VARCHAR(100) | UNIQUE, NOT NULL |

### actor
| Column     | Type         | Constraints      |
|------------|--------------|------------------|
| actor_id   | SERIAL       | PK               |
| actor_name | VARCHAR(100) | UNIQUE, NOT NULL |

### mood
| Column    | Type        | Constraints      |
|-----------|-------------|------------------|
| mood_id   | SERIAL      | PK               |
| mood_name | VARCHAR(50) | UNIQUE, NOT NULL |

All 15 moods seeded on init:
happy, sad, relaxed, sleepy, romantic, energetic, devotional,
focus, nostalgic, lonely, chill, workout, gaming, party, feel good

---

## Group 2 — Operational tables (5 tables)
Live application data. Written by FastAPI during user interaction.

### song ⭐ (core table)
| Column           | Type          | Constraints                    |
|------------------|---------------|--------------------------------|
| song_id          | SERIAL        | PK                             |
| title            | VARCHAR(200)  | NOT NULL                       |
| language_id      | INT           | FK → language(language_id)     |
| singer_id        | INT           | FK → singer(singer_id)         |
| director_id      | INT           | FK → music_director(director_id)|
| actor_id         | INT           | FK → actor(actor_id)           |
| genre_id         | INT           | FK → genre(genre_id)           |
| movie_name       | VARCHAR(200)  | NULLABLE (not all songs have a movie) |
| album            | VARCHAR(200)  | NULLABLE                       |
| year             | INT           | NULLABLE                       |
| duration_seconds | INT           | NOT NULL, DEFAULT 0            |
| audio_file_path  | VARCHAR(500)  | NOT NULL                       |
| created_at       | TIMESTAMP     | DEFAULT NOW()                  |

**Important:** movie_name is always nullable. Never assume a song has a movie.

### song_mood (junction table — song ↔ mood)
| Column      | Type   | Constraints                                    |
|-------------|--------|------------------------------------------------|
| song_mood_id| SERIAL | PK                                             |
| song_id     | INT    | FK → song(song_id) ON DELETE CASCADE, NOT NULL |
| mood_id     | INT    | FK → mood(mood_id) ON DELETE CASCADE, NOT NULL |
|             |        | UNIQUE(song_id, mood_id)                       |

One song can have multiple moods. One mood can apply to many songs.

### song_like
| Column    | Type        | Constraints                                      |
|-----------|-------------|--------------------------------------------------|
| like_id   | SERIAL      | PK                                               |
| song_id   | INT         | FK → song(song_id) ON DELETE CASCADE, UNIQUE     |
| status    | VARCHAR(10) | NOT NULL, CHECK IN ('liked', 'disliked')         |
| updated_at| TIMESTAMP   | DEFAULT NOW()                                    |

One row per song. UPSERT on like/dislike. Not a log — current status only.

### user_event ⭐ (Bronze — permanent behaviour log)
| Column            | Type         | Constraints                              |
|-------------------|--------------|------------------------------------------|
| event_id          | SERIAL       | PK                                       |
| song_id           | INT          | FK → song(song_id) ON DELETE SET NULL    |
| event_type        | VARCHAR(30)  | NOT NULL, CHECK IN ('played','paused',   |
|                   |              | 'completed','skipped','liked','disliked',|
|                   |              | 'searched','mood_selected')              |
| selected_mood_id  | INT          | FK → mood(mood_id) ON DELETE SET NULL    |
| search_query      | VARCHAR(300) | NULLABLE (only for searched events)      |
| listening_duration| INT          | DEFAULT 0 (seconds listened)             |
| event_time        | TIMESTAMP    | NOT NULL, DEFAULT NOW()                  |

**CRITICAL: Never delete rows from this table. Ever.**
This is the raw behaviour log. It grows permanently over time.
Airflow reads this table to build silver/gold layers.

### search_history
| Column      | Type         | Constraints           |
|-------------|--------------|-----------------------|
| search_id   | SERIAL       | PK                    |
| query       | VARCHAR(300) | NOT NULL              |
| result_count| INT          | DEFAULT 0             |
| searched_at | TIMESTAMP    | NOT NULL DEFAULT NOW()|

---

## Group 3 — Analytics tables (5 tables)
Written ONLY by Airflow pipeline. Never written by FastAPI.

### silver_events (cleaned user_event data)
| Column            | Type         | Constraints                           |
|-------------------|--------------|---------------------------------------|
| silver_id         | SERIAL       | PK                                    |
| event_id          | INT          | FK → user_event(event_id) ON DELETE CASCADE |
| song_id           | INT          | FK → song(song_id) ON DELETE SET NULL |
| event_type        | VARCHAR(30)  | NOT NULL                              |
| mood_id           | INT          | FK → mood(mood_id) ON DELETE SET NULL |
| language_name     | VARCHAR(50)  | denormalised for analytics speed      |
| singer_name       | VARCHAR(100) | denormalised for analytics speed      |
| genre_name        | VARCHAR(50)  | denormalised for analytics speed      |
| movie_name        | VARCHAR(200) | denormalised from song                |
| listening_duration| INT          | DEFAULT 0                             |
| is_completed      | BOOLEAN      | DEFAULT FALSE                         |
| event_time        | TIMESTAMP    | NOT NULL                              |

### gold_song_stats (per-song aggregates)
| Column          | Type      | Constraints                                    |
|-----------------|-----------|------------------------------------------------|
| stat_id         | SERIAL    | PK                                             |
| song_id         | INT       | UNIQUE, FK → song(song_id) ON DELETE CASCADE   |
| play_count      | INT       | DEFAULT 0                                      |
| complete_count  | INT       | DEFAULT 0                                      |
| skip_count      | INT       | DEFAULT 0                                      |
| like_count      | INT       | DEFAULT 0                                      |
| dislike_count   | INT       | DEFAULT 0                                      |
| completion_rate | FLOAT     | DEFAULT 0.0 (complete_count / play_count)      |
| last_played_at  | TIMESTAMP | NULLABLE                                       |
| computed_at     | TIMESTAMP | DEFAULT NOW()                                  |

### gold_singer_stats (per-singer aggregates)
| Column      | Type      | Constraints                                      |
|-------------|-----------|--------------------------------------------------|
| stat_id     | SERIAL    | PK                                               |
| singer_id   | INT       | UNIQUE, FK → singer(singer_id) ON DELETE CASCADE |
| total_plays | INT       | DEFAULT 0                                        |
| total_likes | INT       | DEFAULT 0                                        |
| total_skips | INT       | DEFAULT 0                                        |
| computed_at | TIMESTAMP | DEFAULT NOW()                                    |

### gold_mood_stats (per-mood aggregates)
| Column                 | Type      | Constraints                                  |
|------------------------|-----------|----------------------------------------------|
| stat_id                | SERIAL    | PK                                           |
| mood_id                | INT       | UNIQUE, FK → mood(mood_id) ON DELETE CASCADE |
| times_selected         | INT       | DEFAULT 0                                    |
| songs_played_under_mood| INT       | DEFAULT 0                                    |
| computed_at            | TIMESTAMP | DEFAULT NOW()                                |

### gold_language_stats (per-language aggregates)
| Column      | Type      | Constraints                                          |
|-------------|-----------|------------------------------------------------------|
| stat_id     | SERIAL    | PK                                                   |
| language_id | INT       | UNIQUE, FK → language(language_id) ON DELETE CASCADE |
| total_plays | INT       | DEFAULT 0                                            |
| total_likes | INT       | DEFAULT 0                                            |
| total_skips | INT       | DEFAULT 0                                            |
| computed_at | TIMESTAMP | DEFAULT NOW()                                        |

---

## Group 4 — Recommendation table (1 table)
Written ONLY by scoring script (pipeline/scoring/scoring_script.py).

### recommendation_scores
| Column           | Type      | Constraints                                   |
|------------------|-----------|-----------------------------------------------|
| rec_id           | SERIAL    | PK                                            |
| song_id          | INT       | UNIQUE, FK → song(song_id) ON DELETE CASCADE  |
| play_score       | FLOAT     | DEFAULT 0.0                                   |
| like_score       | FLOAT     | DEFAULT 0.0                                   |
| recency_score    | FLOAT     | DEFAULT 0.0                                   |
| completion_score | FLOAT     | DEFAULT 0.0                                   |
| skip_penalty     | FLOAT     | DEFAULT 0.0                                   |
| final_score      | FLOAT     | DEFAULT 0.0                                   |
| rank             | INT       | DEFAULT 0 (1 = best)                          |
| scored_at        | TIMESTAMP | DEFAULT NOW()                                 |

Scoring formula:
final_score = play_score + like_score + recency_score
            + completion_score − skip_penalty

---

## Key relationships summary

```
language      ──< song
genre         ──< song
singer        ──< song
music_director──< song
actor         ──< song
song          ──< song_mood >── mood
song          ──| song_like
song          ──< user_event >── mood (selected_mood_id)
user_event    ──| silver_events
song          ──| gold_song_stats
singer        ──| gold_singer_stats
mood          ──| gold_mood_stats
language      ──| gold_language_stats
song          ──| recommendation_scores
```

## Who writes to which tables

| Table                  | Written by          |
|------------------------|---------------------|
| lookup tables          | init.sql seed only  |
| song                   | seed.py only        |
| song_mood              | seed.py only        |
| song_like              | FastAPI events router|
| user_event             | FastAPI events router|
| search_history         | FastAPI songs router |
| silver_events          | Airflow silver task  |
| gold_*                 | Airflow gold task    |
| recommendation_scores  | scoring_script.py    |
