let currentPage = 1;
const limit = 10;

async function loadAstronauts() {
  const grid = document.getElementById("astronauts-grid");

  grid.innerHTML = "<p class='loading'>Loading astronauts...</p>";

  //Fetch both the data and the total count simultaneously
  const [astronauts, countData] = await Promise.all([
    fetchAstronauts(currentPage, limit),
    fetchAstronautsCount(),
  ]);

  const total = countData.total;
  const totalPages = Math.ceil(total / limit);

  grid.innerHTML = "";

  if (astronauts.length === 0) {
    grid.innerHTML = "<p class='loading'>No astronaut found.</p>";
    updatePagination(totalPages);
    return;
  }

  astronauts.forEach((astronaut) => {
    const card = document.createElement("div");
    card.className = "catalog-card";
    card.style.cursor = "pointer";

    card.addEventListener("click", () => {
      window.location.href = `astronaut-detail.html?id=${astronaut.id}`;
    });

    card.innerHTML = `
      <div class="catalog-card-header">
        <h2>${astronaut.name}</h3>
      </div>
      <p class="catalog-biography">${astronaut.short_biography}</p>
      <img src="${astronaut.image_url}" alt="${astronaut.name}" class="card-image"/>
      <div class="catalog-details">
        <div class="detail">
          <span class="detail-label">Nationality</span>
          <span class="detail-value">${astronaut.nationality}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Date of birth</span>
          <span class="detail-value">${astronaut.birth_date}
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
      loadAstronauts();
      window.scrollTo(0, 0);
    }
  });

  document.getElementById("next-btn").addEventListener("click", () => {
    if (currentPage < totalPages) {
      currentPage++;
      loadAstronauts();
      window.scrollTo(0, 0);
    }
  });
}

document.addEventListener("DOMContentLoaded", () => {
  loadAstronauts();
});
