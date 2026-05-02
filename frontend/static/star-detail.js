document.addEventListener("DOMContentLoaded", async () => {
  const params = new URLSearchParams(window.location.search);
  const star_id = params.get("id");
  const container = document.getElementById("star-detail");

  if (!star_id) {
    container.innerHTML = "<p>No star selected</p>";
    return;
  }

  const response = await fetch(`http://127.0.0.1:8000/api/v1/stars/${star_id}`);
  const star = await response.json();

  container.innerHTML = `
    <a href="stars.html" class="back-link">&larr; Back to Stars</a>
    <div class="detail-card">
      <div class="detail-top">
        <img src="${star.image_url}" alt="${star.name}" class="detail-image"/>
        <div class="detail-info">
          <div class="detail-header">
            <h2>${star.name}</h2>
            <span class="catalog-badge">${star.star_type || "Star"}</span>
          </div>
          <p class="detail-description">${star.description}</p>
          <div class="catalog-details">
            <div class="detail">
              <span class="detail-label">Distance</span>
              <span class="detail-value">${star.distance_light_years} ly</span>
            </div>
            <div class="detail">
              <span class="detail-label">Designation</span>
              <span class="detail-value">${star.designation}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Magnitude</span>
              <span class="detail-value">${star.magnitude}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Fun Facts</span>
              <span class="detail-value">${star.fun_facts}</span>
            </div>
          </div>
        </div>
      </div>
      <div class="detail-african">
        <div class="african-context">
          <h4>African Context</h4>
          <p>${star.cultural_significance || "Research Ongoing"}</p>
        </div>
        <div class="african-context">
          <h4>Mythological Context</h4>
          <p>${star.mythological_context || "Research Ongoing"}</p>
        </div>
        <div class="african-context">
          <h4>Seasonal Associations</h4>
          <p>${star.seasonal_associations || "Research Ongoing"}</p>
        </div>
      </div>
    </div>
  `;
});
