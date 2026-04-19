from sqlalchemy import Column, Integer, String, Float, Boolean, JSON, Text
from core.database import Base


class Planet(Base):
    __tablename__ = "planets"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, nullable=False)
    mass = Column(Float)
    radius = Column(Float)
    distance_from_sun = Column(Float)
    orbital_period = Column(Float)
    has_rings = Column(Boolean, default=False)
    number_of_moons = Column(Integer, default=0)
    description = Column(String)
    fun_facts = Column(JSON)
    african_context = Column(Text)
    visible_from_nigeria = Column(Boolean)
    naked_eye = Column(Boolean)
    viewing_notes = Column(String)
