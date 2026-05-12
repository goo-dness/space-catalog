from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from core.database import SessionLocal
from models.messier_objects import MessierObjects
from schemas.messier_objects import MessierObjectCreate, MessierObjectResponse

router = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.get("/messier/count")
def get_objects_count(db: Session = Depends(get_db)):
    total = db.query(MessierObjects).count()
    return {"total": total}


@router.get("/messier", response_model=List[MessierObjectResponse])
def get_messier_objects(
    db: Session = Depends(get_db),
    page: int = Query(default=1, ge=1),
    limit: int = Query(default=10, ge=1, le=100),
):
    skip = (page - 1) * limit
    objects = db.query(MessierObjects).offset(skip).limit(limit).all()
    return objects


@router.get("/messier/{object_id}", response_model=MessierObjectResponse)
def get_messier_object(object_id: int, db: Session = Depends(get_db)):
    obj = db.query(MessierObjects).filter(MessierObjects.id == object_id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="Messier object not found")
    return obj


@router.post("/messier", response_model=MessierObjectResponse)
def create_messier_object(obj: MessierObjectCreate, db: Session = Depends(get_db)):
    db_obj = MessierObjects(**obj.model_dump())
    db.add(db_obj)
    db.commit()
    db.refresh(db_obj)
    return db_obj


@router.put("/messier/{object_id}", response_model=MessierObjectResponse)
def update_messier_object(
    object_id: int, obj: MessierObjectCreate, db: Session = Depends(get_db)
):
    db_obj = db.query(MessierObjects).filter(MessierObjects.id == object_id).first()
    if not db_obj:
        raise HTTPException(status_code=404, detail="Messier object not found")
    for key, value in obj.model_dump(exclude_unset=True).items():
        setattr(db_obj, key, value)
    db.commit()
    db.refresh(db_obj)
    return db_obj


@router.delete("/messier/{object_id}")
def delete_messier_object(object_id: int, db: Session = Depends(get_db)):
    db_obj = db.query(MessierObjects).filter(MessierObjects.id == object_id).first()
    if not db_obj:
        raise HTTPException(status_code=404, detail="Messier object not found")
    db.delete(db_obj)
    db.commit()
    return {"message": f"Messier object {object_id} deleted successfully"}
