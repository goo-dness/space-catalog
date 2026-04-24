from pydantic import BaseModel, ConfigDict
from typing import Optional


class AgencyBase(BaseModel):
    name: str
    country: Optional[str] = None
    year_found: Optional[int] = None
    is_active: Optional[bool] = None
    story: Optional[str] = None


class AgencyCreate(AgencyBase):
    pass


class AgencyResponse(AgencyBase):
    id: int
    model_config = ConfigDict(from_attributes=True)
