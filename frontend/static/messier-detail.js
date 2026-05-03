document.addEventListener("DOMContentLoaded", async () => {
  const params = new URLSearchParams(window.location.search);
  const messier_id = params.get("id");
  const container = document.getElementById("messier-detail");

  if (!messier_id) {
    container.innerHTML = "<p>No messier object selected</p>";
    return;
  }

  const response = await fetch(
    `http://127.0.0.1:8000/api/v1/messier/${messier_id}`,
  );
  const messier = await response.json();

  container.innerHTML = `
    <a href="messier_objects.html" class="back-link">&larr; Back to Messier Objects</a>
    <div class="detail-card">
      <div class="detail-top">
        <img src="${messier.image_url}" alt="${messier.name}" class="detail-image"/>
        <div class="detail-info">
          <div class="detail-header">
            <h2>${messier.name}</h2>
            <span class="catalog-badge">${messier.object_type || "Star"}</span>
          </div>
          <p class="detail-description">${messier.description}</p>
          <div class="catalog-details">
            <div class="detail">
              <span class="detail-label">Distance</span>
              <span class="detail-value">${messier.distance_light_years} ly</span>
            </div>
            <div class="detail">
              <span class="detail-label">Apparent magnitude</span>
              <span class="detail-value">${messier.apparent_magnitude}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Dclination</span>
              <span class="detail-value">${messier.declination}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Fun Facts</span>
              <span class="detail-value">${messier.fun_facts}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Constellation</span>
              <span class="detail-value">${messier.constellation}</span>
            </div>
            <div class="detail">
            <span class="detail-label">NGC Number</span>
            <span class="detail-value">${messier.ngc_number}</span>
            </div>
            <div class="detail">
            <span class="detail-label">Right Ascension</span>
            <span class="detail-value">${messier.right_ascension}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Discovered by</span>
              <span class="detail-value">${messier.discovered_by}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Year Discovered</span>
              <span class="detail-value">${messier.discovery_year}</span>
            </div>
          </div>
        </div>
      </div>
      <div class="detail-african">
        <div class="african-context">
          <h4>African Context</h4>
          <p>${messier.african_context}</p>
        </div>
      </div>
    </div>
  `;
});
