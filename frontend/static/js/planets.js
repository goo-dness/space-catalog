document.addEventListener("DOMContentLoaded", async () => {
  const grid = document.getElementById("planets-grid");

  const planets = await fetchPlanets();

  grid.innerHTML = "";

  planets.forEach((planet) => {
    const card = document.createElement("div");
    card.className = "catalog-card";
    card.innerHTML = `
            <div class="catalog-card-header">
                <h3>${planet.name}</h3>
                <span class="catalog-badge">${planet.planet_type || "Planet"}</span>
            </div>
            <p class="catalog-description">${planet.description}</p>
            <div class="catalog-details">
                <div class="detail">
                    <span class="detail-label">Distance from Sun</span>
                    <span class="detail-value">${planet.distance_from_sun_km} km</span>
                </div>
                <div class="detail">
                    <span class="detail-label">Moons</span>
                    <span class="detail-value">${planet.number_of_moons}</span>
                </div>
                <div class="detail">
                    <span class="detail-label">Orbital Period</span>
                    <span class="detail-value">${planet.orbital_period_days} days</span>
                </div>
            </div>
            <div class="african-context">
                <h4>African Context</h4>
                <p>${planet.african_context || "Research ongoing"}</p>
            </div>
        `;
    grid.appendChild(card);
  });
});
