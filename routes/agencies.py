from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from core.database import SessionLocal
from models.agencies import Agency
from schemas.agencies import AgencyResponse, AgencyCreate, AgencyBase
from typing import List

router = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.get("/agencies", response_model=List[AgencyResponse])
def get_agencies(db: Session = Depends(get_db)):
    return db.query(Agency).all()


@router.get("/agencies/{agency_id}", response_model=AgencyResponse)
def get_agency(agency_id: int, db: Session = Depends(get_db)):
    agency = db.query(Agency).filter(Agency.id == agency_id).first()
    if not agency:
        raise HTTPException(status_code=404, detail="Agency not found")
    return agency


@router.post("/agencies", response_model=AgencyResponse)
def create_agency(agency: AgencyCreate, db: Session = Depends(get_db)):
    db_agency = Agency(**agency.model_dump())
    db.add(db_agency)
    db.commit()
    db.refresh(db_agency)
    return db_agency
