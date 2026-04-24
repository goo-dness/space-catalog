import sys
import os

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from core.database import SessionLocal
from models.planets import Planet
from data.planets import planets_data
from data.stars import stars_data
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


if __name__ == "__main__":
    seed_planets()
    seed_stars()
