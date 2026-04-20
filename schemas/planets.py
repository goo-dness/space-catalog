from pydantic import BaseModel, ConfigDict
from typing import Optional


class PlanetBase(BaseModel):
    id: int
    name: str
    mass: Optional[float] = None
    radius: Optional[float] = None
    distance_from_sun: Optional[float] = None
    orbital_period: Optional[float] = None
    has_rings: bool = False
    number_of_moons: int = 0
    surface_gravity: Optional[float] = None
    temperature: Optional[float] = None
    description: Optional[str] = None
    fun_facts: Optional[str] = None
    visible_from_nigeria: Optional[bool] = None
    naked_eye_view: Optional[bool] = None


class PlanetCreate(PlanetBase):
    pass


class PlanetResponse(PlanetBase):
    id: int
    model_config = ConfigDict(from_attributtes=True)
