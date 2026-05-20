let currentPage = 1;
const limit = 20;

async function loadStar() {
  const grid = document.getElementById("stars-grid");

  grid.innerHTML = "<p class='loading'>Loading stars...</p>";

  //Fetch both stars data and he total count simultaneously
  const [stars, countData] = await Promise.all([
    fetchStars(currentPage, limit),
    fetchStarsCount(),
  ]);

  const total = countData.total;
  const totalPages = Math.ceil(total / limit);
  grid.innerHTML = "";

  if (stars.length === 0) {
    grid.innerHTML = "<p class='loading'>No stars found.</p>";
    updatePagination(totalPages);
    return;
  }

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
      <p class="catalog-description">${star.short_description || "Coming soon"}</p>
      <img src="${star.image_url}" alt="${star.name}" class="card-image"/>
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

  //Cleaning up listeners using the cloneNode trick from your planets code
  prevBtn.replaceWith(prevBtn.cloneNode(true));
  nextBtn.replaceWith(nextBtn.cloneNode(true));

  document.getElementById("prev-btn").addEventListener("click", () => {
    if (currentPage > 1) {
      currentPage--;
      loadStar();
      window.scrollTo(0, 0);
    }
  });

  document.getElementById("next-btn").addEventListener("click", () => {
    if (currentPage < totalPages) {
      currentPage++;
      loadStar();
      window.scrollTo(0, 0);
    }
  });
}
document.addEventListener("DOMContentLoaded", () => {
  loadStar();
});
