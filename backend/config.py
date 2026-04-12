import logging
import logging.handlers
from pathlib import Path

from pydantic_settings import BaseSettings, SettingsConfigDict

LOGS_DIR = Path(__file__).parent.parent / "logs"


class Settings(BaseSettings):
    model_config = SettingsConfigDict(env_file=".env")

    postgres_user: str
    postgres_password: str
    postgres_db: str
    postgres_host: str
    postgres_port: int = 5432

    lastfm_api_key: str = ""
    lastfm_api_secret: str = ""

    r2_account_id: str = ""
    r2_access_key_id: str = ""
    r2_secret_access_key: str = ""
    r2_bucket_name: str = "smriti-songs"

    @property
    def database_url(self) -> str:
        return (
            f"postgresql://{self.postgres_user}:{self.postgres_password}"
            f"@{self.postgres_host}:{self.postgres_port}/{self.postgres_db}"
        )


settings = Settings()


def setup_logging() -> None:
    """Configure Python logging with console + rotating file handlers.

    Creates the logs/ directory if it does not exist.
    Log format: timestamp | level | module | message
    Called once from main.py on app startup.
    """
    LOGS_DIR.mkdir(exist_ok=True)
    log_file = LOGS_DIR / "backend.log"

    fmt = logging.Formatter(
        fmt="%(asctime)s | %(levelname)-8s | %(name)s | %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
    )

    # Console handler
    console = logging.StreamHandler()
    console.setFormatter(fmt)

    # Rotating file handler — 5 MB per file, keep 3 backups
    file_handler = logging.handlers.RotatingFileHandler(
        log_file, maxBytes=5 * 1024 * 1024, backupCount=3, encoding="utf-8"
    )
    file_handler.setFormatter(fmt)

    root = logging.getLogger()
    root.setLevel(logging.INFO)
    # Avoid adding duplicate handlers if called more than once
    if not root.handlers:
        root.addHandler(console)
        root.addHandler(file_handler)
    else:
        root.handlers.clear()
        root.addHandler(console)
        root.addHandler(file_handler)
