# CLAUDE.md — Smriti

This is the master context file for Claude Code.
Read ALL referenced files before writing any code.

## Project in one line
A single-user, locally-hosted music web app that learns your listening
behaviour and recommends songs based on your personal patterns —
not generic trends.

## Read these files in order before doing anything

1. `docs/ARCHITECTURE.md`   — system design, tech stack, data flow
2. `docs/DATABASE.md`       — all 17 tables, columns, constraints, relationships
3. `docs/STAGES.md`         — 4 build stages, what belongs where
4. `docs/RULES.md`          — coding rules, structure rules, strict constraints
5. `docs/API.md`            — all FastAPI endpoints, request/response shapes

## Absolute rules — never break these

- Never put business logic in routers — routers call services only
- Never read .env directly in any file — always use `backend/config.py`
- Never use one giant models.py — one model file per domain
- Never call fetch() in React components — always use `frontend/src/services/api.js`
- Never mix DDL (init.sql) with seed data (seed.py)
- Never delete user_event data — it is the permanent behaviour log
- Never hardcode DB credentials anywhere — always from config
- Never create a new table without updating `docs/DATABASE.md`
- Never skip writing a Pydantic schema for a new endpoint
- movie_name is nullable — not all songs belong to a movie

## Project location
/Users/peddiadithyavardhan/Downloads/Projects/personal-song-memory-engine/

## Current state
- Stage 1 in progress
- 8 songs available in /songs folder
- All 17 tables defined in backend/db/init.sql
- Docker Compose not yet started
