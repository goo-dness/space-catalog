document.addEventListener("DOMContentLoaded", async () => {
  const stars = await fetchStars();
  const planets = await fetchPlanets();
  const agencies = await fetchAgencies();
  const messier = await fetchMessierObjects();

  const apod = await fetchAPOD();
  const apodContainer = document.getElementById("apod-container");
  const apodLoading = document.getElementById("apod-loading");

  apodLoading.style.display = "none";

  if (apod.media_type === "image") {
    apodContainer.innerHTML = `
      <div class="apod-image-wrapper">
        <img src="${apod.url}" alt="${apod.title}" class="apod-image"/>
      </div>
      <div class="apod-info">
        <h3 class="apod-title">${apod.title}</h3>
        <p class="apod-date">${apod.date}</p>
        <p class="apod-explanation">${apod.explanation}</p>
      </div>
    `;
  } else if (apod.media_type === "video") {
    apodContainer.innerHTML = `
      <div class="apod-video-wrapper">
        <iframe
          src="${apod.url}"
          title="${apod.title}"
          frameborder="0"
          allowfullscreen
          class="apod-video">
        </iframe>
      </div>
      <div class="apod-info">
        <h3 class="apod-title">${apod.title}</h3>
        <p class="apod-date">${apod.date}</p>
        <p class="apod-explanation">${apod.explanation}</p>
      </div>
    `;
  }

  document.getElementById("star-count").textContent = stars.length;
  document.getElementById("planet-count").textContent = planets.length;
  document.getElementById("agency-count").textContent = agencies.length;
  document.getElementById("messier-count").textContent = messier.length;

  const featuredCards = document.getElementById("featured-cards");
  stars.slice(0, 3).forEach((star) => {
    const card = document.createElement("div");
    card.className = "card";
    card.innerHTML = `
      <h3>${star.name}</h3>
      <p class="card-type">Star &bull; ${star.constellation}</p>
      <p>${star.cultural_significance}</p>
      <a href="stars.html?id=${star.id}" class="card-link">Learn more</a>
    `;
    featuredCards.appendChild(card);
  });

  console.log("stars:", stars);
  console.log("planets:", planets);
  console.log("apod:", apod);
});
