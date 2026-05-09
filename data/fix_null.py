import os
import sys

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from core.database import SessionLocal
from models.planets import Planet

db = SessionLocal()

updated = (
    db.query(Planet).filter(Planet.is_exoplanet == None).update({"is_exoplanet": False})
)
db.commit()
db.close()
print(f"Fixed {updated} planets with NULL is_exoplanet")
