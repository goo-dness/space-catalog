async function loadNews() {
  // grabs the news-grid container where articles will be rendered
  const grid = document.getElementById("news-grid");

  try {
    // calls the fetchNews function defined in api.js
    const data = await fetchNews();

    // data.results is the array of articles returned by the Spaceflight News API
    const articles = data.results;

    // if no articles came back, show a message and stop
    if (!articles || articles.length === 0) {
      grid.innerHTML = "<p>No news available right now.</p>";
      return;
    }

    // clear the loading text before rendering articles
    grid.innerHTML = "";

    // loop through each article and build a card for it
    articles.forEach((article) => {
      // create a card element for this article
      const card = document.createElement("div");
      card.className = "news-card";

      // format the published date into a readable string
      const date = new Date(article.published_at).toLocaleDateString("en-GB", {
        year: "numeric",
        month: "long",
        day: "numeric",
      });
      // toLocaleDateString converts the ISO date into something like "6 May 2026"

      // build the card's inner HTML with the article's image, title, date and summary
      card.innerHTML = `
        <img
          src="${article.image_url}"
          alt="${article.title}"
          class="news-image"
          onerror="this.style.display='none'"
        />
        <!-- onerror falls back to a placeholder if the image fails to load -->
        <div class="news-content">
          <span class="news-source">${article.news_site}</span>
          <!-- news_site is the name of the publication e.g. NASA, SpaceNews -->
          <h3 class="news-title">${article.title}</h3>
          <p class="news-date">${date}</p>
          <p class="news-summary">${article.summary}</p>
          <a href="${article.url}" target="_blank" class="btn-primary news-btn">
            Read Full Article
          </a>
          <!-- target="_blank" opens the article in a new tab -->
        </div>
      `;

      // add the finished card to the grid
      grid.appendChild(card);
    });
  } catch (error) {
    // if the fetch fails for any reason, show an error message
    console.error("Failed to load news:", error);
    grid.innerHTML = "<p>Failed to load news. Please try again later.</p>";
  }
}

// run loadNews as soon as the page DOM is ready
document.addEventListener("DOMContentLoaded", loadNews);
