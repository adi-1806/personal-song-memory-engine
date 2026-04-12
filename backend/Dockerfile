FROM python:3.11-slim

WORKDIR /app

# Install dependencies first (better layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy backend application code
COPY . .

# Songs folder is mounted as a volume at runtime:
#   ./songs:/app/songs
# Do not COPY songs — they are too large and belong on the host

CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "8000"]
