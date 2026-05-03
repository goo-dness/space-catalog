document.addEventListener("DOMContentLoaded", async () => {
  const params = new URLSearchParams(window.location.search);
  const planet_id = params.get("id");
  const container = document.getElementById("planet-detail");

  if (!planet_id) {
    container.innerHTML = "<p>No planet selected</p>";
    return;
  }

  const response = await fetch(
    `http://127.0.0.1:8000/api/v1/planets/${planet_id}`,
  );
  const planet = await response.json();

  container.innerHTML = `
    <a href="planets.html" class="back-link">&larr; Back to planets</a>
    <div class="detail-card">
     <div class="detail-top">
      <img src="${planet.image_url}" alt="${planet.name}" class="detail-image"/>
       <div class="detail-info">
        <div class="detail-header">
         <h2>${planet.name}</h2>
         <span class="catalog-badge">${planet.planet_type || "Planet"}</span>
       </div>
       <p class="detail-description">${planet.description}</p>
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
         <div class="detail">
           <span class="detail-label">Fun Facts</span>
           <span class="detail-value">${planet.fun_facts}</span>
         </div>
        </div>
       </div>
      </div>
     </div>
  `;
});
