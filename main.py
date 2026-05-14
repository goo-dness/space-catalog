from contextlib import asynccontextmanager

from dotenv import load_dotenv

load_dotenv()
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from core.database import Base, engine
from routes.agencies import router as agency_router
from routes.apod import router as apod_router
from routes.messier_objects import router as messier_router
from routes.planets import router as planet_router
from routes.search import router as search_router
from routes.stars import router as star_router


@asynccontextmanager
async def lifespan(app: FastAPI):
    Base.metadata.create_all(bind=engine)
    yield


app = FastAPI(
    title="Space Catalog",
    description="A space education knowledge platform",
    version="0.1.0",
    lifespan=lifespan,
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["https://spacecatalog-production.up.railway.app/"],
    allow_methods=["*"],
    allow_headers=["*"],
)


app.include_router(planet_router, prefix="/api/v1", tags=["planets"])
app.include_router(star_router, prefix="/api/v1", tags=["stars"])
app.include_router(agency_router, prefix="/api/v1", tags=["agencies"])
app.include_router(messier_router, prefix="/api/v1", tags=["messier"])
app.include_router(apod_router, prefix="/api/v1")
app.include_router(search_router, prefix="/api/v1", tags=["search"])


@app.get("/")
def root():
    return {"message": "Welcome to Space Catalog"}
