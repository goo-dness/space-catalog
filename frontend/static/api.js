const API_BASE = "https://space-catalog-production.up.railway.app/api/v1";

async function fetchAPOD() {
  const response = await fetch(`${API_BASE}/apod`);
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
