# Space Catalog

A space education knowledge engine with AI-powered smart search 
and NASA APOD integration. The first public module of Sankofa Engine.

## What it does
- Browse and search celestial objects (planets, stars, galaxies)
- NASA Astronomy Picture of the Day integration
- Smart search powered by AI
- African astronomical context

## Tech Stack
- FastAPI
- PostgreSQL
- SQLAlchemy
- Alembic
- Python 3.12

## Setup

Clone the repository:
git clone git@github.com:goo-dness/space-catalog.git
cd space-catalog

Create and activate virtual environment:
python3 -m venv venv
source venv/bin/activate

Install dependencies:
pip install -r requirements.txt

Create .env file:
DATABASE_URL=postgresql://user:password@localhost/space_catalog
NASA_API_KEY=your_api_key

Run the server:
uvicorn main:app --reload

## Status
In active development. Foundation layer complete.

## Author
Goodness — AI Systems Programmer
Building knowledge infrastructure for Africa.