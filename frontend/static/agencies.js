document.addEventListener("DOMContentLoaded", async () => {
  const grid = document.getElementById("agencies-grid");

  const agencies = await fetchAgencies();
  grid.innerHTML = "";

  agencies.forEach((agency) => {
    const card = document.createElement("div");
    card.className = "catalog-card";

    //Make the agency clickable- agency.id goes into the URL as a query parameter
    card.style.cursor = "pointer";
    card.addEventListener("click", () => {
      window.location.href = `agency-detail.html?id=${agency.id}`;
    });
    card.innerHTML = `
      <div class="catalog-card-header">
        <h3>${agency.name}</h3>
        <span class="catalog-badge">${agency.abbreviation}</span>
      </div>
      <div class="catalog-details">
        <div class="detail">
          <span class="detail-label">Country</span>
          <span class="detail-value">${agency.country}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Headquarters</span>
          <span class="detail-value">${agency.headquarters}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Year founded</span>
          <span class="detail-value">${agency.year_found}</span>
        </div>
        <div class="detail">
          <span class="detail-label">Missions count</span>
          <span class="detail-value">${agency.missions_count}</span>
        </div>
      </div>
      </div>
      `;
    grid.appendChild(card);
  });
});
