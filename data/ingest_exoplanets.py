import csv
import os
import sys

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from core.database import SessionLocal
from models.planets import Planet

PARSECS_TO_LIGHT_YEARS = 3.26156


def ingest_exoplanets():
    # read from local CSV file instead of API
    csv_path = os.path.join(os.path.dirname(__file__), "..", "data", "exoplanets.csv")

    print(f"Reading exoplanet data from {csv_path}...")

    if not os.path.exists(csv_path):
        print("CSV file not found. Download it from exoplanetarchive.ipac.caltech.edu")
        return

    with open(csv_path, "r", encoding="utf-8") as f:
        # skip comment lines that start with #
        # NASA CSV files have metadata comments at the top
        lines = [line for line in f if not line.startswith("#")]

    reader = csv.DictReader(lines)
    # DictReader uses the first non-comment line as headers
    planets = list(reader)
    print(f"Found {len(planets)} exoplanets in CSV")

    db = SessionLocal()
    added = 0
    skipped = 0

    try:
        for planet in planets:
            name = planet.get("pl_name", "").strip()

            if not name:
                skipped += 1
                continue

            exists = db.query(Planet).filter(Planet.name == name).first()
            if exists:
                skipped += 1
                continue

            def safe_float(val):
                try:
                    return float(val) if val.strip() else None
                except:
                    return None

            def safe_int(val):
                try:
                    return int(float(val)) if val.strip() else None
                except:
                    return None

            dist_parsecs = safe_float(planet.get("sy_dist", ""))
            dist_ly = (
                round(dist_parsecs * PARSECS_TO_LIGHT_YEARS, 2)
                if dist_parsecs
                else None
            )

            new_planet = Planet(
                name=name,
                host_star=planet.get("hostname", "").strip() or None,
                orbital_period=safe_float(planet.get("pl_orbper", "")),
                radius=safe_float(planet.get("pl_rade", "")),
                mass=safe_float(planet.get("pl_bmasse", "")),
                temperature=safe_float(planet.get("pl_eqt", "")),
                discovery_year=safe_int(planet.get("disc_year", "")),
                discovery_method=planet.get("discoverymethod", "").strip() or None,
                distance_from_earth_ly=dist_ly,
                is_exoplanet=True,
            )

            db.add(new_planet)
            added += 1

            if added % 500 == 0:
                db.commit()
                print(f"Committed {added} exoplanets so far...")

        db.commit()
        print(f"Done. Added {added} exoplanets, skipped {skipped}.")

    except Exception as e:
        db.rollback()
        print(f"Error during ingestion: {e}")

    finally:
        db.close()


if __name__ == "__main__":
    ingest_exoplanets()
