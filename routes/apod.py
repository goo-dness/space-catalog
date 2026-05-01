import os

import httpx
from fastapi import APIRouter, HTTPException

router = APIRouter()


@router.get("/apod")
async def get_apod():
    try:
        nasa_key = os.getenv("NASA_API_KEY")
        if not nasa_key:
            raise HTTPException(status_code=500, detail="NASA API key not configured")

        async with httpx.AsyncClient() as client:
            response = await client.get(
                f"https://api.nasa.gov/planetary/apod?api_key={nasa_key}"
            )
        if response.status_code != 200:
            raise HTTPException(
                status_code=response.status_code, detail="API KEY error"
            )
        return response.json()

    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Unexpected error: {str(e)}")
