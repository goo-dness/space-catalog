document.addEventListener("DOMContentLoaded", async () => {
  const grid = document.getElementById("stars-grid");
  const stars = await fetchStars();
  grid.innerHTML = "";

  stars.forEach((star) => {
    const card = document.createElement("div");
    card.className = "catalog-card";
    card.style.cursor = "pointer";
    card.addEventListener("click", () => {
      window.location.href = `star-detail.html?id=${star.id}`;
    });
    card.innerHTML = `
      <div class="catalog-card-header">
        <h3>${star.name}</h3>
        <span class="catalog-badge">${star.constellation}</span>
      </div>
      <p class="catalog-description">${star.description || "Coming soon"}</p>
      <img src="${star.image_url}" alt="${star.name}" class="card-image"/>
      <p class="catalog-fun_facts">${star.fun_facts || "Coming soon"}</p>
      <div class="catalog-details">
        <div class="detail">
          <span class="detail-label">Distance</span>
          <span class="detail-value">${star.distance_light_years} ly</span>
        </div>
        <div class="detail">
          <span class="detail-label">Magnitude</span>
          <span class="detail-value">${star.magnitude}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Type</span>
          <span class="detail-value">${star.star_type || "Unknown"}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Designation</span>
          <span class="detail-value">${star.designation}</span>
        </div>
      </div>
      <div class="african-context">
        <h4>African Context</h4>
        <p>${star.cultural_significance || "Research Ongoing"}</p>
      </div>
    `;
    grid.appendChild(card);
  });
});
