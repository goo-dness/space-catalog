const API_BASE = "http://127.0.0.1:8000/api/v1";

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
