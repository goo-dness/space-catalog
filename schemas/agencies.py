from typing import Optional

from pydantic import BaseModel, ConfigDict


class AgencyBase(BaseModel):
    name: str
    abbreviation: Optional[str] = None
    country: Optional[str] = None
    year_found: Optional[int] = None
    active: Optional[bool] = None
    description: Optional[str] = None
    image_url: Optional[str] = None
    headquarters: Optional[str] = None
    missions_count: Optional[int] = None
    website: Optional[str] = None
    african_relevance: Optional[str] = None


class AgencyCreate(AgencyBase):
    pass


class AgencyResponse(AgencyBase):
    id: int
    model_config = ConfigDict(from_attributes=True)
