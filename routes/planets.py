from typing import List, Optional

from fastapi import APIRouter, Depends, HTTPException, Query
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


@router.get("/planets/count")
def get_planets_count(
    db: Session = Depends(get_db),
    is_exoplanet: Optional[bool] = Query(None),
    search: Optional[str] = Query(None),
    discovery_method: Optional[str] = Query(None),
):
    # separate counts endpoints so frontend knows total pages
    query = db.query(Planet)
    if is_exoplanet is not None:
        query = query.filter(Planet.is_exoplanet == is_exoplanet)
    if search:
        query = query.filter(
            Planet.name.ilike(f"%{search}%") | Planet.host_star.ilike(f"%{search}%")
        )
        # ilike does case insensitve search
        # % means match anything before or after the term
    if discovery_method:
        query = query.filter(Planet.discovery_method == discovery_method)

    offset = (page - 1) * limit
    # page 1 = skip 0, page 2 = skip 2, page 3 = skip 40
    return query.offset(offset).limit(limit).all() or []


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
