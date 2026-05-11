import { fetchMessierObjects } from "./api.js";

// Global state for pagination
let currentOffset = 0;
const limit = 12; // 12 works well for 3 or 4-column grids

async function loadCatalog(offset) {
  const grid = document.getElementById("messier_objects-grid");

  //Fetch the specific slice of data
  const messier_objects = await fetchMessierObjects(limit, offset);

  // Clear the grid for the new page
  grid.innerHTML = "";
  if (messier_objects.length === 0) {
    grid.innerHTML = "<p>No objects found</p>";
    return;
  }

  messier_objects.forEach((messier_object) => {
    const card = document.createElement("div");
    card.className = "catalog-card";
    card.style.cursor = "pointer";

    card.addEventListener("click", () => {
      window.location.href = `messier-detail.html?id=${messier_object.id}`;
    });

    card.innerHTML = `
            <div class="catalog-card-header">
                <h3>M${messier_object.messier_number}: ${messier_object.name}</h3>
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
                    <span class="detail-label">Apparent Magnitude</span>
                    <span class="detail-value">${messier_object.apparent_magnitude}</span>
                </div>
            </div>
        `;
    grid.appendChild(card);
  });

  // Update button states
  document.getElementById("prev-btn").disabled = offset === 0;
  // If the backend returns fewer items than our limit, we are on the last page
  document.getElementById("next-btn").disabled = messier_objects.length < limit;

  // Scroll back to top so the user sees the start of the new results
  window.scrollTo({ top: 0, behavior: "smooth" });
}

document.addEventListener("DOMContentLoaded", () => {
  // Initial load
  loadCatalog(currentOffset);

  // Set up event listeners for your buttons
  document.getElementById("next-btn").addEventListener("click", () => {
    currentOffset += limit;
    loadCatalog(currentOffset);
  });

  document.getElementById("prev-btn").addEventListener("click", () => {
    currentOffset = Math.max(0, currentOffset - limit);
    loadCatalog(currentOffset);
  });
});
