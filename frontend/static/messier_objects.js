document.addEventListener("DOMContentLoaded", async () => {
  const grid = document.getElementById("messier_objects-grid");

  const messier_objects = await fetchMessierObjects();

  grid.innerHTML = "";

  messier_objects.forEach((messier_object) => {
    const card = document.createElement("div");
    card.className = "catalog-card";

    //Make the card clickable- planet.id goes into the URL as a query parameter
    card.style.cursor = "pointer";
    card.addEventListener("click", () => {
      window.location.href = `messier-detail.html?id=${messier_object.id}`;
    });
    card.innerHTML = `
            <div class="catalog-card-header">
                <h3>${messier_object.name}</h3>
                <span class="catalog-badge">${messier_object.object_type}</span>
            </div>
            <p class="catalog-description">${messier_object.description}</p>
            <img src="${messier_object.image_url}" alt="${messier_object.name}" class="card-image"/>
            <div class="catalog-details">
                <div class="detail">
                    <span class="detail-label">NGC Number</span>
                    <span class="detail-value">${messier_object.ngc_number}</span>
                </div>
                <div class="detail">
                    <span class="detail-label">Constellation</span>
                    <span class="detail-value">${messier_object.constellation}</span>
                </div>
                <div class="detail">
                    <span class="detail-label">Apparent magnitude</span>
                    <span class="detail-value">${messier_object.apparent_magnitude}</span>
                </div>
            </div>
        `;
    grid.appendChild(card);
  });
});
