from datetime import datetime
from typing import List, Optional

from pydantic import BaseModel


# Base schema — shared fields
class StarBase(BaseModel):
    name: str
    designation: Optional[str] = None
    constellation: Optional[str] = None
    distance_light_years: Optional[float] = None
    description: Optional[str] = None
    fun_facts: Optional[str] = None
    magnitude: Optional[float] = None
    star_type: Optional[str] = None
    right_ascension: Optional[str] = None
    image_url: Optional[str] = None

    # African context
    african_names: Optional[dict] = None
    cultural_significance: Optional[str] = None
    traditional_uses: Optional[dict] = None
    seasonal_associations: Optional[str] = None
    mythological_context: Optional[str] = None


# Create schema — what comes in on POST
class StarCreate(StarBase):
    pass


# Update schema — all fields optional for PATCH
class StarUpdate(BaseModel):
    name: Optional[str] = None
    designation: Optional[str] = None
    constellation: Optional[str] = None
    distance_light_years: Optional[float] = None
    magnitude: Optional[float] = None
    description: Optional[str] = None
    fun_facts: Optional[str] = None
    star_type: Optional[str] = None
    african_names: Optional[dict] = None
    cultural_significance: Optional[str] = None
    traditional_uses: Optional[dict] = None
    seasonal_associations: Optional[str] = None
    mythological_context: Optional[str] = None


# Response schema — what goes out
class StarResponse(StarBase):
    id: int
    created_at: datetime
    updated_at: datetime

    class Config:
        from_attributes = True
