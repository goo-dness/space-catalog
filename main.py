from dotenv import load_dotenv
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from core.database import Base, engine
from routes.agencies import router as agency_router
from routes.apod import router as apod_router
from routes.messier_objects import router as messier_router
from routes.planets import router as planet_router
from routes.stars import router as star_router

load_dotenv()
Base.metadata.create_all(bind=engine)

app = FastAPI(
    title="Space Catalog",
    description="A space education knowledge platform",
    version="0.1.0",
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:5500",
        "http://127.0.0.1:5500",
    ],
    allow_methods=["*"],
    allow_headers=["*"],
)


app.include_router(planet_router, prefix="/api/v1", tags=["planets"])
app.include_router(star_router, prefix="/api/v1", tags=["stars"])
app.include_router(agency_router, prefix="/api/v1", tags=["agencies"])
app.include_router(messier_router, prefix="/api/v1", tags=["messier"])
app.include_router(apod_router, prefix="/api/v1")


@app.get("/")
def root():
    return {"message": "Welcome to Space Catalog"}
