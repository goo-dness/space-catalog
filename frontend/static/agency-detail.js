document.addEventListener("DOMContentLoaded", async () => {
  const params = new URLSearchParams(window.location.search);
  const agency_id = params.get("id");
  const container = document.getElementById("agency-detail");

  if (!agency_id) {
    container.innerHTML = "<p>No agency selected</p>";
    return;
  }

  const response = await fetch(
    `http://127.0.0.1:8000/api/v1/agencies/${agency_id}`,
  );
  const agency = await response.json();
  container.innerHTML = `
    <a href="agencies.html" class="back-link">&larr;Back to agencies</a>
    <div class="catalog-card-header">
      <h3>${agency.name}</h3>
      <span class="catalog-badge">${agency.abbreviation}</span>
    </div>
    <p class="catalog-description">${agency.description}</p>
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
    </div
    <div class="african-context">
      <h4>African Relevance</h4>
      <p>${agency.african_relevance}</p>
    </div>
    `;
});
