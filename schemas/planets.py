from typing import Optional

from pydantic import BaseModel, ConfigDict


class PlanetBase(BaseModel):
    name: str
    mass: Optional[float] = None
    radius: Optional[float] = None
    distance_from_sun: Optional[float] = None
    orbital_period: Optional[float] = None
    has_rings: bool = False
    number_of_moons: int = 0
    surface_gravity: Optional[float] = None
    temperature: Optional[float] = None
    image_url: Optional[str] = None
    description: Optional[str] = None
    fun_facts: Optional[str] = None
    visible_from_nigeria: Optional[bool] = None
    naked_eye_view: Optional[bool] = None

    # new exoplanets fields
    is_exoplanet: Optional[bool] = None
    host_star: Optional[str] = None
    discovery_method: Optional[str] = None
    discovery_year: Optional[int] = None
    distance_from_earth_ly: Optional[float] = None
    african_context: Optional[str] = None


class PlanetCreate(PlanetBase):
    pass


class PlanetResponse(PlanetBase):
    id: int
    model_config = ConfigDict(from_attributes=True)
