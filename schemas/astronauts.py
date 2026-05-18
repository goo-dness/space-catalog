from typing import List, Optional

from pydantic import BaseModel, ConfigDict


class AstronautBase(BaseModel):
    name: str
    nationality: Optional[str] = None
    short_biography: Optional[str] = None
    long_biography: Optional[str] = None
    missions: Optional[List[str]] = None
    image_url: Optional[str] = None
    birth_date: Optional[str] = None
    is_historical: Optional[bool] = None


class AstronautCreate(AstronautBase):
    pass


class AstronautResponse(AstronautBase):
    id: int
    model_config = ConfigDict(from_attributes=True)
