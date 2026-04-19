from sqlalchemy import Column, Integer, String, Float, Boolean
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
