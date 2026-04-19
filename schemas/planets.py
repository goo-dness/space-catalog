from pydantic import BaseModel
from typing import Optional


class PlanetBase(BaseModel):
    name: str
    mass: Optional[float] = None
    radius: Optional[float] = None
    distance_from_sun: Optional[float] = None
    orbital_period: Optional[float] = None
    has_rings: bool = False
    number_of_moons: int = 0
    description: Optional[str] = None


class PlanetCreate(PlanetBase):
    pass


class PlanetResponse(PlanetBase):
    id: int

    class Config:
        from_attributes = True
