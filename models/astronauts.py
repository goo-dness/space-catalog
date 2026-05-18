from datetime import datetime, timezone

from sqlalchemy import JSON, Boolean, Column, DateTime, Integer, String, Text

from core.database import Base


class Astronaut(Base):
    __tablename__ = "astronauts"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, nullable=False)
    nationality = Column(String)
    short_biography = Column(String)
    long_biography = Column(Text)
    missions = Column(JSON)
    image_url = Column(String)
    birth_date = Column(String)
    is_historical = Column(Boolean, default=False)
    # timestamp
    created_at = Column(
        DateTime(timezone=True), default=lambda: datetime.now(timezone.utc)
    )
    updated_at = Column(
        DateTime(timezone=True),
        default=lambda: datetime.now(timezone.utc),
        onupdate=lambda: datetime.now(timezone.utc),
    )
