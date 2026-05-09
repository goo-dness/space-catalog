document.addEventListener("DOMContentLoaded", async () => {
  const grid = document.getElementById("planets-grid");
  // get the grid container where planet cards will be rendered

  const planets = await fetchPlanets();
  // fetch all planets from the API including exoplanets

  grid.innerHTML = "";
  // clear any loading text before rendering cards

  planets.forEach((planet) => {
    const card = document.createElement("div");
    card.className = "catalog-card";

    card.style.cursor = "pointer";
    // makes the card show a pointer cursor on hover

    card.addEventListener("click", () => {
      window.location.href = `planet-detail.html?id=${planet.id}`;
      // clicking anywhere on the card navigates to the detail page
    });

    // check if this is an exoplanet or a solar system planet
    // and render different details accordingly
    const isExoplanet = planet.is_exoplanet;

    const detailsHTML = isExoplanet
      ? `
        <div class="detail">
          <span class="detail-label">Host Star</span>
          <span class="detail-value">${planet.host_star || "Unknown"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Discovery Method</span>
          <span class="detail-value">${planet.discovery_method || "Unknown"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Discovery Year</span>
          <span class="detail-value">${planet.discovery_year || "Unknown"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Orbital Period</span>
          <span class="detail-value">${planet.orbital_period ? planet.orbital_period.toFixed(2) + " days" : "Unknown"}</span>
        </div>
      `
      : `
        <div class="detail">
          <span class="detail-label">Distance from Sun</span>
          <span class="detail-value">${planet.distance_from_sun ? planet.distance_from_sun + "million km" : "N/A"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Moons</span>
          <span class="detail-value">${planet.number_of_moons ?? 0}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Orbital Period</span>
          <span class="detail-value">${planet.orbital_period ? planet.orbital_period + " days" : "N/A"}</span>
        </div>
      `;
    // ?? is the nullish coalescing operator
    // it returns the right side only if the left side is null or undefined
    // so planet.number_of_moons ?? 0 returns 0 if moons is null

    card.innerHTML = `
      <div class="catalog-card-header">
        <h3>${planet.name}</h3>
        <span class="catalog-badge">${isExoplanet ? "Exoplanet" : "Planet"}</span>
      </div>
      <p class="catalog-description">
        ${planet.description || (isExoplanet ? "Exoplanet orbiting " + (planet.host_star || "a distant star") : "No description available")}
      </p>
      ${planet.image_url ? `<img src="${planet.image_url}" alt="${planet.name}" class="card-image"/>` : ""}
      <!-- only render the image tag if image_url exists, avoids broken image icons -->
      <div class="catalog-details">
        ${detailsHTML}
      </div>
    `;

    grid.appendChild(card);
  });
});
