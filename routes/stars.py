from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from core.database import SessionLocal
from models.stars import Star
from schemas.stars import StarCreate, StarResponse, StarUpdate
from typing import List

router = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.get("/stars", response_model=List[StarResponse])
def get_stars(db: Session = Depends(get_db)):
    return db.query(Star).all()


@router.get("/stars/{star_id}", response_model=StarResponse)
def get_star(star_id: int, db: Session = Depends(get_db)):
    db_star = db.query(Star).filter(Star.id == star_id).first()
    if not db_star:
        raise HTTPException(status_code=404, detail="Star not found")
    return db_star


@router.post("/stars", response_model=List[StarResponse])
def create_star(star: StarCreate, db: Session = Depends(get_db)):
    db_star = Star(**star.model_dump())
    db.add(db_star)
    db.commit()
    db.refresh(db_star)
    return db_star


@router.put("/stars/{star_id}", response_model=StarResponse)
def update_star(star_id: int, star: StarUpdate, db: Session = Depends(get_db)):
    db_star = db.query(Star).filter(Star.id == star_id).first()
    if not db_star:
        raise HTTPException(status_code=404, detail="Star not found")
    for key, value in star.model_dump(exclude_unset=True).items():
        setattr(db_star, key, value)
    db.commit()
    db.refresh(db_star)
    return db_star


@router.delete("/stars/{star_id}")
def delete_star(star_id: int, db: Session = Depends(get_db)):
    db_star = db.query(Star).filter(Star.id == star_id).first()
    if not db_star:
        raise HTTPException(status_code=404, detail="Star not found")
    db.delete(db_star)
    db.commit()
    return {"message": f"Star {star_id} deleted successfully"}
