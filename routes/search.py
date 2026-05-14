from fastapi import APIRouter, Depends, Query
from sqlalchemy.orm import Session

from core.database import SessionLocal
from models.agencies import Agency
from models.messier_objects import MessierObjects
from models.planets import Planet
from models.stars import Star

router = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.get("/search")
def search_objects(q: str = Query(...), db: Session = Depends(get_db)):
    planets = db.query(Planet).filter(Planet.name.ilike(f"%{q}%")).limit(5).all()
    stars = db.query(Star).filter(Star.name.ilike(f"%{q}%")).limit(5).all()
    messier_objects = (
        db.query(MessierObjects)
        .filter(MessierObjects.name.ilike(f"%{q}%"))
        .limit(5)
        .all()
    )
    agencies = db.query(Agency).filter(Agency.name.ilike(f"%{q}%")).limit(5).all()

    planets_result = [
        {
            "id": p.id,
            "name": p.name,
            "type": "planet",
            "description": p.description,
            "is_exoplanet": p.is_exoplanet,
            "host_star": p.host_star,
        }
        for p in planets
    ]

    star_result = [
        {
            "id": s.id,
            "name": s.name,
            "type": "star",
            "description": s.description,
            "constellation": s.constellation,
        }
        for s in stars
    ]

    agency_result = [
        {
            "id": a.id,
            "name": a.name,
            "type": "agency",
            "description": a.description,
            "abbreviation": a.abbreviation,
        }
        for a in agencies
    ]

    messier_result = [
        {
            "id": m.id,
            "name": m.name,
            "type": "messier_objects",
            "description": m.description,
            "object_type": m.object_type,
        }
        for m in messier_objects
    ]
    results = planets_result + star_result + agency_result + messier_result
    return results
