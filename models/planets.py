from sqlalchemy import Column, Integer, String, Float, Boolean, JSON, DateTime
from core.database import Base
from datetime import datetime


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
    visible_from_nigeria = Column(Boolean, default=False)
    naked_eye = Column(Boolean, default=False)

    # Timestamps
    created_at = Column(DateTime, default=datetime.utcnow)
    updated_at = Column(DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
