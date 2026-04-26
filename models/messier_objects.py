from sqlalchemy import Column, Integer, String, Float, DateTime
from core.database import Base
from datetime import datetime, timezone


class MessierObjects(Base):
    __tablename__ = "messier_objects"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False, index=True)
    messier_number = Column(Integer)
    ngc_number = Column(String)
    object_type = Column(String)
    constellation = Column(String)
    distance_light_years = Column(Float)
    apparent_magnitude = Column(Float)
    right_ascension = Column(String)
    declination = Column(String)
    description = Column(String)
    fun_facts = Column(String)
    african_context = Column(String)
    discovery_year = Column(Integer)
    discovered_by = Column(String)
    created_at = Column(
        DateTime(timezone=True), default=lambda: datetime.now(timezone.utc)
    )
    updated_at = Column(
        DateTime(timezone=True),
        default=lambda: datetime.now(timezone.utc),
        onupdate=lambda: datetime.now(timezone.utc),
    )
