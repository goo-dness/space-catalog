document.addEventListener("DOMContentLoaded", async () => {
  const grid = document.getElementById("planets-grid");

  const planets = await fetchPlanets();

  grid.innerHTML = "";

  planets.forEach((planet) => {
    const card = document.createElement("div");
    card.className = "catalog-card";

    //Make the card clickable- planet.id goes into the URL as a query parameter
    card.style.cursor = "pointer";
    card.addEventListener("click", () => {
      window.location.href = `planet-detail.html?id=${planet.id}`;
    });
    card.innerHTML = `
            <div class="catalog-card-header">
                <h3>${planet.name}</h3>
                <span class="catalog-badge">${planet.planet_type || "Planet"}</span>
            </div>
            <p class="catalog-description">${planet.description}</p>
            <img src="${planet.image_url}" alt="${planet.name}" class="card-image"/>
            <div class="catalog-details">
                <div class="detail">
                    <span class="detail-label">Distance from Sun</span>
                    <span class="detail-value">${planet.distance_from_sun} km</span>
                </div>
                <div class="detail">
                    <span class="detail-label">Moons</span>
                    <span class="detail-value">${planet.number_of_moons}</span>
                </div>
                <div class="detail">
                    <span class="detail-label">Orbital Period</span>
                    <span class="detail-value">${planet.orbital_period} days</span>
                </div>
            </div>
        `;
    grid.appendChild(card);
  });
});
