import os
import sys

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from core.database import SessionLocal
from data.agencies import agencies_data
from data.messier_objects import messier_data
from data.planets import planets_data
from data.stars import stars_data
from models.agencies import Agency
from models.messier_objects import MessierObjects
from models.planets import Planet
from models.stars import Star


def seed_planets():
    db = SessionLocal()
    try:
        for planet in planets_data:
            exists = db.query(Planet).filter(Planet.name == planet["name"]).first()
            if exists:
                for key, value in planet.items():
                    setattr(exists, key, value)
            else:
                db.add(Planet(**planet))
        db.commit()
        print("Planets seeded successfully.")
    finally:
        db.close()


def seed_stars():
    db = SessionLocal()
    try:
        for star in stars_data:
            exists = db.query(Star).filter(Star.name == star["name"]).first()
            if exists:
                for key, value in star.items():
                    setattr(exists, key, value)
            else:
                db.add(Star(**star))
        db.commit()
        print("Stars seeded successfully.")
    finally:
        db.close()


def seed_agencies():
    db = SessionLocal()
    try:
        for agency in agencies_data:
            exists = db.query(Agency).filter(Agency.name == agency["name"]).first()
            if exists:
                for key, value in agency.items():
                    setattr(exists, key, value)
            else:
                db.add(Agency(**agency))
        db.commit()
        print("Agencies seeded successfully.")
    except Exception as e:
        print(f"Error seeding agencies: {e}")
    finally:
        db.close()


def seed_messier_objects():
    db = SessionLocal()
    try:
        for obj_data in messier_data:
            exists = (
                db.query(MessierObjects)
                .filter(MessierObjects.name == obj_data["name"])
                .first()
            )
            if exists:
                for key, value in obj_data.items():
                    setattr(exists, key, value)
            else:
                db.add(MessierObjects(**obj_data))
        db.commit()
        print("Messier objects seeded successfully.")
    except Exception as e:
        print(f"Error seeding messier objects: {e}")
    finally:
        db.close()


if __name__ == "__main__":
    seed_planets()
    seed_stars()
    seed_agencies()
    seed_messier_objects()
