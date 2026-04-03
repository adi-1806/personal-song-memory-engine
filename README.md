# Smriti

A single-user, locally-hosted music web app that learns your listening behaviour
and recommends songs based on your personal patterns — not generic trends.

## Tech Stack
- **Frontend:** React 18
- **Backend:** FastAPI (Python 3.11)
- **Database:** PostgreSQL 15
- **Pipeline:** Apache Airflow
- **Infrastructure:** Docker Compose

## Quick Start
```bash
cp .env.example .env   # fill in your values
docker-compose up -d postgres pgadmin backend
docker exec smriti_backend python -m backend.db.seed
```

Frontend: `cd frontend && npm install && npm start`

## Ports
| Service    | URL                     |
|------------|-------------------------|
| React app  | http://localhost:3000   |
| FastAPI    | http://localhost:8000   |
| pgAdmin    | http://localhost:5050   |
| Airflow    | http://localhost:8080   |
