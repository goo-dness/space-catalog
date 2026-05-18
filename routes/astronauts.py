from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from core.database import SessionLocal
from models.astronauts import Astronaut
from schemas.astronauts import AstronautCreate, AstronautResponse

router = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close


@router.get("/astronauts/count")
def get_astronault_counts(db: Session = Depends(get_db)):
    total = db.query(Astronaut).count()
    return {"total": total}


@router.get("/astronauts", response_model=List[AstronautResponse])
def get_astronauts(
    db: Session = Depends(get_db),
    page: int = Query(default=1, ge=1),
    limit: int = Query(default=10, ge=1, le=100),
):
    skip = (page - 1) * limit
    astronaults = db.query(Astronaut).offset(skip).limit(limit).all()
    return astronaults


@router.get("/astronauts/{astronaut_id}", response_model=AstronautResponse)
def get_astronaults_id(astronaut_id: int, db: Session = Depends(get_db)):
    astro = db.query(Astronaut).filter(Astronaut.id == astronaut_id).first()
    if not astro:
        raise HTTPException(status_code=404, detail="Astronaut not founder")
    return astro
