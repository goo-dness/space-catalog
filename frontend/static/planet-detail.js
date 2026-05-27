document.addEventListener("DOMContentLoaded", async () => {
  const params = new URLSearchParams(window.location.search);
  const planet_id = params.get("id");
  const container = document.getElementById("planet-detail");

  if (!planet_id) {
    container.innerHTML = "<p>No planet selected</p>";
    return;
  }

  const response = await fetch(
    `https://space-catalog-production.up.railway.app/api/v1/planets/${planet_id}`,
  );
  const planet = await response.json();

  //helper function to clean null values
  // returns fallback if value is null, undefined or the string "null"
  const clean = (val, fallback = "N/A") =>
    !val || val === "null" ? fallback : val;

  const isExoplanet = planet.is_exoplanet;
  // determines which set of details to show

  const detailsHTML = isExoplanet
    ? `
        <div class="detail">
          <span class="detail-label">Host Star</span>
          <span class="detail-value">${clean(planet.host_star)}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Discovery Method</span>
          <span class="detail-value">${clean(planet.discovery_method)}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Discovery Year</span>
          <span class="detail-value">${clean(planet.discovery_year)}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Orbital Period</span>
          <span class="detail-value">${planet.orbital_period ? planet.orbital_period.toFixed(2) + " days" : "N/A"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Distance from Earth</span>
          <span class="detail-value">${planet.distance_from_earth_ly ? planet.distance_from_earth_ly + " ly" : "N/A"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Radius</span>
          <span class="detail-value">${planet.radius ? planet.radius + " Earth radii" : "N/A"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Mass</span>
          <span class="detail-value">${planet.mass ? planet.mass + " Earth masses" : "N/A"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Temperature</span>
          <span class="detail-value">${planet.temperature ? planet.temperature + " K" : "N/A"}</span>
        </div>
      `
    : `
        <div class="detail">
          <span class="detail-label">Distance from Sun</span>
          <span class="detail-value">${clean(planet.distance_from_sun, "N/A")} km</span>
        </div>
        <div class="detail">
          <span class="detail-label">Moons</span>
          <span class="detail-value">${planet.number_of_moons ?? 0}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Orbital Period</span>
          <span class="detail-value">${clean(planet.orbital_period)} days</span>
        </div>
        <div class="detail">
          <span class="detail-label">Surface Gravity</span>
          <span class="detail-value">${clean(planet.surface_gravity)} m/s²</span>
        </div>
        <div class="detail">
          <span class="detail-label">Temperature</span>
          <span class="detail-value">${clean(planet.temperature)} K</span>
        </div>
        <div class="detail">
          <span class="detail-label">Fun Facts</span>
          <span class="detail-value">${clean(planet.fun_facts)}</span>
        </div>
      `;

  container.innerHTML = `
      <a href="planets.html" class="back-link">&larr; Back to Planets</a>
      <div class="detail-card">
        <div class="detail-top">
          ${
            planet.image_url && planet.image_url !== "null"
              ? `<img src="${planet.image_url}" alt="${planet.name}" class="detail-image"/>`
              : ""
          }
          <!-- only render image if it exists and is not the string null -->
          <div class="detail-info">
            <div class="detail-header">
              <h2>${planet.name}</h2>
              <span class="catalog-badge">${isExoplanet ? "Exoplanet" : "Planet"}</span>
            </div>
            <p class="detail-description">
              ${clean(
                planet.description,
                isExoplanet
                  ? "Exoplanet orbiting " +
                      clean(planet.host_star, "a distant star")
                  : "No description available",
              )}
            </p>
            <div class="catalog-details">
              ${detailsHTML}
            </div>
          </div>
        </div>
        ${
          isExoplanet &&
          planet.african_sky_context &&
          planet.african_sky_context !== "null"
            ? `
          <div class="detail-african">
            <div class="african-context">
              <h4>African Sky Context</h4>
              <p>${planet.african_sky_context}</p>
            </div>
          </div>
          `
            : ""
        }
        <!-- african context section only shows if data exists -->
      </div>
    `;
});
