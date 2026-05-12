const API_BASE = "https://space-catalog-production.up.railway.app/api/v1";

async function fetchAPOD() {
  const response = await fetch(`${API_BASE}/apod`);
  return await response.json();
}
async function fetchStars() {
  const response = await fetch(`${API_BASE}/stars`);
  return await response.json();
}
async function fetchPlanets(page = 1, limit = 20, filters = {}) {
  //page = which page to fetch, default 1
  // limit = how many per page, default 20
  // filters = object with optional is_exoplanet, search, discovery_method

  const params = new URLSearchParams({
    page,
    limit,
    ...filters,
    //spreads any filter keys into query params
    // e.g {is_exoplanet: true} becomes ?is_exoplanet=true
  });

  const response = await fetch(`${API_BASE}/planets?${params}`);
  return await response.json();
}
async function fetchPlanetsCount(filters = {}) {
  //fetches total count for pagination calculation
  const params = new URLSearchParams(filters);
  const response = await fetch(`${API_BASE}/planets/count?${params}`);
  return await response.json();
}
async function fetchAgencies() {
  const response = await fetch(`${API_BASE}/agencies`);
  return await response.json();
}

async function fetchMessierObjects(page = 1, limit = 10) {
  const response = await fetch(
    `${API_BASE}/messier/?page=${page}&limit=${limit}`,
  );
  return await response.json();
}
async function fetchMessierCount() {
  const response = await fetch(`${API_BASE}/messier/count`);
  return await response.json();
}

async function fetchNews() {
  const response = await fetch(
    "https://api.spaceflightnewsapi.net/v4/articles/?limit=20",
  );
  //Fetches 20 news from the api
  return await response.json();
}
