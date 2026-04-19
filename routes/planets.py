from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from core.database import SessionLocal
from models.planets import Planet
from schemas.planets import PlanetCreate, PlanetResponse
from typing import List

router = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.get("/planets", response_model=List[PlanetCreate])
def get_planets(db: Session = Depends(get_db)):
    return db.query(Planet).all()


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
