-- =============================================================
-- Personal Song Memory Engine — Database Init Script
-- PostgreSQL 15 | All 17 tables | Creation order matters (FKs)
-- =============================================================

-- ─────────────────────────────────────────────────────────────
-- GROUP 1 — Lookup Tables (6 tables)
-- Static reference data. Seeded once. Rarely changes.
-- ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS language (
    language_id   SERIAL      PRIMARY KEY,
    language_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS genre (
    genre_id   SERIAL      PRIMARY KEY,
    genre_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
    singer_id   SERIAL       PRIMARY KEY,
    singer_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS music_director (
    director_id   SERIAL       PRIMARY KEY,
    director_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS actor (
    actor_id   SERIAL       PRIMARY KEY,
    actor_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS mood (
    mood_id   SERIAL      PRIMARY KEY,
    mood_name VARCHAR(50) UNIQUE NOT NULL
);

-- Seed all 15 moods on first init
INSERT INTO mood (mood_name) VALUES
    ('happy'),
    ('sad'),
    ('relaxed'),
    ('sleepy'),
    ('romantic'),
    ('energetic'),
    ('devotional'),
    ('focus'),
    ('nostalgic'),
    ('lonely'),
    ('chill'),
    ('workout'),
    ('gaming'),
    ('party'),
    ('feel good')
ON CONFLICT (mood_name) DO NOTHING;


-- ─────────────────────────────────────────────────────────────
-- GROUP 2 — Operational Tables (5 tables)
-- Live application data. Written by FastAPI during user interaction.
-- ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS song (
    song_id          SERIAL       PRIMARY KEY,
    title            VARCHAR(200) NOT NULL,
    language_id      INT          REFERENCES language(language_id),
    singer_id        INT          REFERENCES singer(singer_id),
    director_id      INT          REFERENCES music_director(director_id),
    actor_id         INT          REFERENCES actor(actor_id),
    genre_id         INT          REFERENCES genre(genre_id),
    movie_name       VARCHAR(200),
    album            VARCHAR(200),
    year             INT,
    duration_seconds INT          NOT NULL DEFAULT 0,
    audio_file_path  VARCHAR(500) NOT NULL,
    created_at       TIMESTAMP    DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS song_mood (
    song_mood_id SERIAL PRIMARY KEY,
    song_id      INT    NOT NULL REFERENCES song(song_id) ON DELETE CASCADE,
    mood_id      INT    NOT NULL REFERENCES mood(mood_id) ON DELETE CASCADE,
    UNIQUE (song_id, mood_id)
);

CREATE TABLE IF NOT EXISTS song_like (
    like_id    SERIAL      PRIMARY KEY,
    song_id    INT         UNIQUE REFERENCES song(song_id) ON DELETE CASCADE,
    status     VARCHAR(10) NOT NULL CHECK (status IN ('liked', 'disliked')),
    updated_at TIMESTAMP   DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS user_event (
    event_id           SERIAL      PRIMARY KEY,
    song_id            INT         REFERENCES song(song_id) ON DELETE SET NULL,
    event_type         VARCHAR(30) NOT NULL CHECK (
                           event_type IN (
                               'played', 'paused', 'completed', 'skipped',
                               'liked', 'disliked', 'searched', 'mood_selected'
                           )
                       ),
    selected_mood_id   INT         REFERENCES mood(mood_id) ON DELETE SET NULL,
    search_query       VARCHAR(300),
    listening_duration INT         DEFAULT 0,
    event_time         TIMESTAMP   NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS search_history (
    search_id    SERIAL       PRIMARY KEY,
    query        VARCHAR(300) NOT NULL,
    result_count INT          DEFAULT 0,
    searched_at  TIMESTAMP    NOT NULL DEFAULT NOW()
);


-- ─────────────────────────────────────────────────────────────
-- GROUP 3 — Analytics Tables (5 tables)
-- Written ONLY by Airflow pipeline. Never written by FastAPI.
-- ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS silver_events (
    silver_id          SERIAL       PRIMARY KEY,
    event_id           INT          REFERENCES user_event(event_id) ON DELETE CASCADE,
    song_id            INT          REFERENCES song(song_id) ON DELETE SET NULL,
    event_type         VARCHAR(30)  NOT NULL,
    mood_id            INT          REFERENCES mood(mood_id) ON DELETE SET NULL,
    language_name      VARCHAR(50),
    singer_name        VARCHAR(100),
    genre_name         VARCHAR(50),
    movie_name         VARCHAR(200),
    listening_duration INT          DEFAULT 0,
    is_completed       BOOLEAN      DEFAULT FALSE,
    event_time         TIMESTAMP    NOT NULL
);

CREATE TABLE IF NOT EXISTS gold_song_stats (
    stat_id         SERIAL    PRIMARY KEY,
    song_id         INT       UNIQUE REFERENCES song(song_id) ON DELETE CASCADE,
    play_count      INT       DEFAULT 0,
    complete_count  INT       DEFAULT 0,
    skip_count      INT       DEFAULT 0,
    like_count      INT       DEFAULT 0,
    dislike_count   INT       DEFAULT 0,
    completion_rate FLOAT     DEFAULT 0.0,
    last_played_at  TIMESTAMP,
    computed_at     TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gold_singer_stats (
    stat_id     SERIAL    PRIMARY KEY,
    singer_id   INT       UNIQUE REFERENCES singer(singer_id) ON DELETE CASCADE,
    total_plays INT       DEFAULT 0,
    total_likes INT       DEFAULT 0,
    total_skips INT       DEFAULT 0,
    computed_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gold_mood_stats (
    stat_id                 SERIAL    PRIMARY KEY,
    mood_id                 INT       UNIQUE REFERENCES mood(mood_id) ON DELETE CASCADE,
    times_selected          INT       DEFAULT 0,
    songs_played_under_mood INT       DEFAULT 0,
    computed_at             TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gold_language_stats (
    stat_id     SERIAL    PRIMARY KEY,
    language_id INT       UNIQUE REFERENCES language(language_id) ON DELETE CASCADE,
    total_plays INT       DEFAULT 0,
    total_likes INT       DEFAULT 0,
    total_skips INT       DEFAULT 0,
    computed_at TIMESTAMP DEFAULT NOW()
);


-- ─────────────────────────────────────────────────────────────
-- GROUP 4 — Recommendation Table (1 table)
-- Written ONLY by pipeline/scoring/scoring_script.py
-- ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS recommendation_scores (
    rec_id           SERIAL    PRIMARY KEY,
    song_id          INT       UNIQUE REFERENCES song(song_id) ON DELETE CASCADE,
    play_score       FLOAT     DEFAULT 0.0,
    like_score       FLOAT     DEFAULT 0.0,
    recency_score    FLOAT     DEFAULT 0.0,
    completion_score FLOAT     DEFAULT 0.0,
    skip_penalty     FLOAT     DEFAULT 0.0,
    final_score      FLOAT     DEFAULT 0.0,
    rank             INT       DEFAULT 0,
    scored_at        TIMESTAMP DEFAULT NOW()
);
