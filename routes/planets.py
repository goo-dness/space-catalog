from typing import List

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from core.database import SessionLocal
from models.planets import Planet
from schemas.planets import PlanetCreate, PlanetResponse

router = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.get("/planets", response_model=List[PlanetResponse])
def get_planets(
    db: Session = Depends(get_db),
    is_exoplanet: Optional[bool] = Query(None),
    # optional query param so frontend can filter
    # /api/v1/planets - all planets
    # /api/v1/planets?is_exoplanet=fale - solar system only
    # /api/v1/planets?is_exoplanet=true - exoplanets only
):
    query = db.query(Planet)
    if is_exoplanet is not None:
        query = query.filter(Planet.is_exoplanet == is_exoplanet)
        # only apply filter if the param was actually passed
        return query.all()


@router.get("/planets/{planet_id}", response_model=PlanetResponse)
def get_planet(planet_id: int, db: Session = Depends(get_db)):
    planet = db.query(Planet).filter(Planet.id == planet_id).first()
    if not planet:
        raise HTTPException(status_code=404, detail="Planet not found")
    return planet


@router.post("/planets", response_model=PlanetResponse)
def create_planet(planet: PlanetCreate, db: Session = Depends(get_db)):
    db_planet = Planet(**planet.model_dump())
    db.add(db_planet)
    db.commit()
    db.refresh(db_planet)
    return db_planet
