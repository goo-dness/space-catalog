const API_BASE = "http://127.0.0.1:8000/api/v1";

const NASA_API_KEY = "RbFIg15EjHrZanSHKpO76KNOg73tARGmXRyf27uH";

async function fetchAPOD() {
  const response = await fetch(
    "https://api.nasa.gov/planetery/apod?api_key=${NASA_API_KEY}",
  );
  return await response.json();
}
async function fetchStars() {
  const response = await fetch(`${API_BASE}/stars`);
  return await response.json();
}
async function fetchPlanets() {
  const response = await fetch(`${API_BASE}/planets`);
  return await response.json();
}
async function fetchAgencies() {
  const response = await fetch(`${API_BASE}/agencies`);
  return await response.json();
}

async function fetchMessierObjects() {
  const response = await fetch(`${API_BASE}/messier`);
  return await response.json();
}
