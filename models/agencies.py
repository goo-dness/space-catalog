from sqlalchemy import Column, String, Integer, DateTime
from datetime import datetime, timezone
from core.database import Base


class Agencies(Base):
    __tablename__ = "agencies"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False, index=True)
    country = Column(String)
    year_found = Column(Integer)
    is_active = Column(True)
    story = Column(String)

    created_at = Column(
        DateTime(timezone=True), default=lambda: datetime.now(timezone.utc)
    )
    updated_at = Column(
        DateTime(timezone=True),
        default=lambda: datetime.now(timezone.utc),
        unopdate=lambda: datetime.now(timezone.utc),
    )
