from fastapi import FastAPI
from routes.planets import router as planet_router
from core.database import engine, Base

Base.metadata.create_all(bind=engine)

app = FastAPI(
    title="Space Catalog",
    description="A space education knowledge platform",
    versin="0.1.0",
)

app.include_router(planet_router, prefix="/api/v1", tags=["planets"])


@app.get("/")
def root():
    return {"message": "Welcome to Space Catalog"}
