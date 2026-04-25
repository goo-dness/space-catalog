from sqlalchemy import Column, String, Integer, DateTime, Boolean
from datetime import datetime, timezone
from core.database import Base


class Agency(Base):
    __tablename__ = "agencies"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False, index=True)
    abbreviation = Column(String)
    country = Column(String)
    year_found = Column(Integer)
    active = Column(Boolean, default=True)
    description = Column(String)
    headquarters = Column(String)
    missions_count = Column(Integer)
    website = Column(String)
    african_relevance = Column(String)

    created_at = Column(
        DateTime(timezone=True), default=lambda: datetime.now(timezone.utc)
    )
    updated_at = Column(
        DateTime(timezone=True),
        default=lambda: datetime.now(timezone.utc),
        onupdate=lambda: datetime.now(timezone.utc),
    )
