from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    DATABASE_URL: str
    NASA_API_KEY: str = "DEMO_KEY"
    APP_NAME: str = "Space Catalog"
    DEBUG: bool = True

    class Config:
        env_file = ".env"


settings = Settings()
