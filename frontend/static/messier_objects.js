let currentPage = 1;
const limit = 12; // Adjusted to 12 for a better grid layout (3x4 or 4x3)

async function loadMessierCatalog() {
  const grid = document.getElementById("messier_objects-grid");

  grid.innerHTML = "<p class='loading'>Loading the cosmos...</p>";

  // Fetching both the data and the total count simultaneously
  const [messier_objects, countData] = await Promise.all([
    fetchMessierObjects(currentPage, limit),
    fetchMessierCount(),
  ]);

  const total = countData.total;
  const totalPages = Math.ceil(total / limit);

  grid.innerHTML = "";

  if (messier_objects.length === 0) {
    grid.innerHTML = "<p class='loading'>No Messier objects found.</p>";
    updatePagination(totalPages);
    return;
  }

  messier_objects.forEach((obj) => {
    const card = document.createElement("div");
    card.className = "catalog-card";
    card.style.cursor = "pointer";

    card.addEventListener("click", () => {
      window.location.href = `messier-detail.html?id=${obj.id}`;
    });

    card.innerHTML = `
      <div class="catalog-card-header">
        <h3>M${obj.messier_number}: ${obj.name}</h3>
        <span class="catalog-badge">${obj.object_type}</span>
      </div>
      <p class="catalog-description">${obj.description}</p>
      <img src="${obj.image_url}" alt="${obj.name}" class="card-image"/>
      <div class="catalog-details">
        <div class="detail">
          <span class="detail-label">NGC Number</span>
          <span class="detail-value">${obj.ngc_number}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Constellation</span>
          <span class="detail-value">${obj.constellation}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Magnitude</span>
          <span class="detail-value">${obj.apparent_magnitude}</span>
        </div>
      </div>
    `;
    grid.appendChild(card);
  });

  updatePagination(totalPages);
}

function updatePagination(totalPages) {
  const prevBtn = document.getElementById("prev-btn");
  const nextBtn = document.getElementById("next-btn");
  const pageInfo = document.getElementById("page-info");

  if (pageInfo) {
    pageInfo.textContent = `Page ${currentPage} of ${totalPages}`;
  }

  prevBtn.disabled = currentPage === 1;
  nextBtn.disabled = currentPage === totalPages;

  // Cleaning up listeners using the cloneNode trick from your planets code
  prevBtn.replaceWith(prevBtn.cloneNode(true));
  nextBtn.replaceWith(nextBtn.cloneNode(true));

  document.getElementById("prev-btn").addEventListener("click", () => {
    if (currentPage > 1) {
      currentPage--;
      loadMessierCatalog();
      window.scrollTo(0, 0);
    }
  });

  document.getElementById("next-btn").addEventListener("click", () => {
    if (currentPage < totalPages) {
      currentPage++;
      loadMessierCatalog();
      window.scrollTo(0, 0);
    }
  });
}

document.addEventListener("DOMContentLoaded", () => {
  loadMessierCatalog();
});
