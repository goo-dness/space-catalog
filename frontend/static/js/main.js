document.addEventListener("DOMContentLoadd", async () => {
  //Load content
  const stars = await fetchStars();
  const planets = await fetchPlanets();
  const agencies = await fetchAgencies();
  const messier = await fetchMessierObjects();

  document.getElementById("star-count").textContent = stars.length;
  document.getElementById("planet-count").textContent = planets.length;
  document.getElementById("agency-count").textContent = agencies.length;
  document.getElementById("messier-count").textContent = messier.length;

  //Featured cards- first three stars
  const featuredCards = document.getElementById("featured-cards");
  stars.slice(0, 3).forEach((star) => {
    const card = document.createElement("div");
    card.className = "card";
    card.innerHTML = `
      <h3>${star.name}</h3>
    <p class="card-type">Star &bull; ${star.constellation}</p>
    <p>${star.description}</p>
    <a href="pages/stars.html" class="card-link">Learn more</a>`;
    featuredCards.appendChild(card);
  });
});
