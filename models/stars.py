from datetime import datetime, timezone

from sqlalchemy import Column, DateTime, Float, Integer, String, Text
from sqlalchemy.dialects.postgresql import JSONB

from core.database import Base


class Star(Base):
    __tablename__ = "stars"

    id = Column(Integer, primary_key=True, index=True)
    # Core astronomical data
    name = Column(String, nullable=False, index=True)
    designation = Column(String)
    constellation = Column(String)
    description = Column(String)
    fun_facts = Column(String)
    distance_light_years = Column(Float)
    star_type = Column(String)
    magnitude = Column(Float)
    right_ascension = Column(String)
    image_url = Column(String)

    # african context - first class names
    african_names = Column(JSONB)
    cultural_significance = Column(Text)
    traditional_uses = Column(JSONB)
    seasonal_associations = Column(Text)
    mythological_context = Column(Text)

    created_at = Column(
        DateTime(timezone=True), default=lambda: datetime.now(timezone.utc)
    )
    updated_at = Column(
        DateTime(timezone=True),
        default=lambda: datetime.now(timezone.utc),
        onupdate=lambda: datetime.now(timezone.utc),
    )
