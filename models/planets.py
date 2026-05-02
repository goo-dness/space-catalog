from datetime import datetime, timezone

from sqlalchemy import Boolean, Column, DateTime, Float, Integer, String

from core.database import Base


class Planet(Base):
    __tablename__ = "planets"
    # Basic physical data
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, nullable=False)
    mass = Column(Float)
    radius = Column(Float)
    distance_from_sun = Column(Float)
    orbital_period = Column(Float)
    has_rings = Column(Boolean, default=False)
    number_of_moons = Column(Integer, default=0)
    surface_gravity = Column(Float)
    temperature = Column(Float)
    # description
    description = Column(String)
    fun_facts = Column(String)
    image_url = Column(String)
    visible_from_nigeria = Column(Boolean, default=False)
    naked_eye_view = Column(Boolean, default=False)

    # Timestamps
    created_at = Column(
        DateTime(timezone=True), default=lambda: datetime.now(timezone.utc)
    )
    updated_at = Column(
        DateTime(timezone=True),
        default=lambda: datetime.now(timezone.utc),
        onupdate=lambda: datetime.now(timezone.utc),
    )
