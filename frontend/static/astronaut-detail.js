document.addEventListener("DOMContentLoaded", async () => {
  const params = new URLSearchParams(window.location.search);
  const astronaut_id = params.get("id");
  const container = document.getElementById("astronaut-detail");

  if (!astronaut_id) {
    container.innerHTML = "<p>No astronaut selected</p>";
    return;
  }

  const response = await fetch(
    `https://https://space-catalog-production.up.railway.app/api/v1/astronauts/${astronaut_id}`,
  );
  const astronaut = await response.json();

  container.innerHTML = `
    <a href="astronauts.html" class="back-link">&larr; Back to astronauts</a>
    <div class="detail-card">
      <div class="detail-top">
        <img src="${astronaut.image_url}" alt="${astronaut.name}" class="detail-image"/>
        <div class="detal-info">
          <div class="detail-header">
            <h2>${astronaut.name}</h2>
          </div>
          <p class="detail-biography">${astronaut.long_biography}</p>
          <div class="catalog-details">
            <div class="detail">
              <span class="detail-label">Nationality</span>
              <span class="detail-value">${astronaut.nationality}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Missions flown</span>
              <span class="detail-value">${astronaut.missions}</span>
            </div>
            <div class="detail">
              <span class="detail-label">Date of birth</span>
              <span class="detail-value">${astronaut.birth_date}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    `;
});
