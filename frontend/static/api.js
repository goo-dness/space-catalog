const API_BASE =
  "https://https://space-catalog-production.up.railway.app/api/v1";

async function fetchAPOD() {
  const response = await fetch(`${API_BASE}/apod`);
  return await response.json();
}
async function fetchStars(page = 1, limit = 20) {
  const response = await fetch(`${API_BASE}/stars?page=${page}&limit=${limit}`);
  return await response.json();
}
async function fetchStarsCount() {
  const response = await fetch(`${API_BASE}/stars/count`);
  return await response.json();
}
async function fetchPlanets(page = 1, limit = 20, filters = {}) {
  //page = which page to fetch, default 1
  // limit = how many per page, default 20
  // filters = object with optional is_exoplanet, discovery_method

  const response = await fetch(`${API_BASE}/planets`);
  return await response.json();
}
async function fetchPlanetsCount() {
  //fetches total count for pagination calculation
  const response = await fetch(`${API_BASE}/planets/count`);
  return await response.json();
}
async function fetchAgencies() {
  const response = await fetch(`${API_BASE}/agencies`);
  return await response.json();
}

async function fetchMessierObjects(page = 1, limit = 10) {
  const response = await fetch(
    `${API_BASE}/messier?page=${page}&limit=${limit}`,
  );
  return await response.json();
}
async function fetchMessierCount() {
  const response = await fetch(`${API_BASE}/messier/count`);
  return await response.json();
}
async function fetchAstronauts(page = 1, limit = 10) {
  const response = await fetch(
    `${API_BASE}/astronauts?page=${page}&limit=${limit}`,
  );
  return await response.json();
}
async function fetchAstronautsCount() {
  const response = await fetch(`${API_BASE}/astronauts/count`);
  return await response.json();
}

async function fetchNews() {
  const response = await fetch(
    "https://api.spaceflightnewsapi.net/v4/articles/?limit=20",
  );
  //Fetches 20 news from the api
  return await response.json();
}
