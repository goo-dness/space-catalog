from fastapi import FastAPI
from routes import planet

app = FastAPI(
    title="Space Catalog",
    description="A space education knowledge platform",
    versin="0.1.0",
)

app.include_router(planet.router, prefix="/api/v1", target=["planets"])


@app.get("/")
def root():
    return {"message": "Welcome to Space Catalog"}
