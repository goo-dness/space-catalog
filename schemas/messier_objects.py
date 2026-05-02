from datetime import datetime
from typing import Optional

from pydantic import BaseModel, ConfigDict


class MessierObjectBase(BaseModel):
    name: str
    messier_number: Optional[int] = None
    ngc_number: Optional[str] = None
    object_type: Optional[str] = None
    constellation: Optional[str] = None
    distance_light_years: Optional[float] = None
    apparent_magnitude: Optional[float] = None
    right_ascension: Optional[str] = None
    declination: Optional[str] = None
    image_url: Optional[str] = None
    description: Optional[str] = None
    fun_facts: Optional[str] = None
    african_context: Optional[str] = None
    discovery_year: Optional[int] = None
    discovered_by: Optional[str] = None
    created_at: Optional[datetime] = None
    updated_at: Optional[datetime] = None


class MessierObjectCreate(MessierObjectBase):
    pass


class MessierObjectResponse(MessierObjectBase):
    id: int
    model_config = ConfigDict(from_attributes=True)
