let currentPage = 1;
const limit = 20;
let currentFilters = {};
// track current page and filters across function calls

async function loadPlanets() {
  try {
    const grid = document.getElementById("planets-grid");
    // matches id="planets-grid" in your HTML
  } catch (error) {
    console.error("Failed to load planets:", error);
  }

  grid.innerHTML = "<p class='loading'>Loading planets...</p>";

  const [planets, countData] = await Promise.all([
    fetchPlanets(currentPage, limit, currentFilters),
    fetchPlanetsCount(currentFilters),
  ]);
  console.log(countData);
  const total = countData.count;
  const totalPages = Math.ceil(total / limit);
  // e.g 1460 / 20 = 73 pages
}
grid.innerHTML = "";

if (planets.length === 0) {
  grid.innerHTML = "<p class='loading'>No planets found.</p>";
  updatePagination(totalPages);
  return;
}

planets.forEach((planet) => {
  const card = document.createElement("div");
  card.className = "catalog-card";
  card.style.cursor = "pointer";

  card.addEventListener("click", () => {
    window.location.href = `planet-detail.html?id=${planet.id}`;
  });

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
          <span class="detail-value">${planet.distance_from_sun ? planet.distance_from_sun + " million km" : "N/A"}</span>
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

  card.innerHTML = `
      <div class="catalog-card-header">
        <h3>${planet.name}</h3>
        <span class="catalog-badge">${isExoplanet ? "Exoplanet" : "Planet"}</span>
      </div>
      <p class="catalog-description">
        ${
          planet.description ||
          (isExoplanet
            ? "Exoplanet orbiting " + (planet.host_star || "a distant star")
            : "No description available")
        }
      </p>
      ${
        planet.image_url
          ? `<img src="${planet.image_url}" alt="${planet.name}" class="card-image"/>`
          : ""
      }
      <div class="catalog-details">
        ${detailsHTML}
      </div>
    `;

  grid.appendChild(card);
});

updatePagination(totalPages);

function updatePagination(totalPages) {
  const prevBtn = document.getElementById("prev-btn");
  const nextBtn = document.getElementById("next-btn");
  const pageInfo = document.getElementById("page-info");
  // matches id="prev-btn", id="next-btn", id="page-info" in your HTML

  pageInfo.textContent = `Page ${currentPage} of ${totalPages}`;
  // shows user where they are

  prevBtn.disabled = currentPage === 1;
  // disable previous button on first page

  nextBtn.disabled = currentPage === totalPages;
  // disable next button on last page

  // remove old listeners before adding new ones
  // to prevent multiple listeners stacking up on each render
  prevBtn.replaceWith(prevBtn.cloneNode(true));
  nextBtn.replaceWith(nextBtn.cloneNode(true));

  // re-grab after clone since replaceWith removes the original
  document.getElementById("prev-btn").addEventListener("click", () => {
    if (currentPage > 1) {
      currentPage--;
      loadPlanets();
      window.scrollTo(0, 0);
    }
  });

  document.getElementById("next-btn").addEventListener("click", () => {
    if (currentPage < totalPages) {
      currentPage++;
      loadPlanets();
      window.scrollTo(0, 0);
    }
  });
}

document.addEventListener("DOMContentLoaded", () => {
  loadPlanets();
});
