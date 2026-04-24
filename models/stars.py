from sqlalchemy import Column, Integer, String, Float, Text, DateTime
from sqlalchemy.dialects.postgresql import JSONB, ARRAY
from datetime import datetime, timezone
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

    # african context - first class names
    african_names = Column(JSONB[ARRAY])
    cultural_significance = Column(Text)
    traditional_uses = Column(JSONB[ARRAY])
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
