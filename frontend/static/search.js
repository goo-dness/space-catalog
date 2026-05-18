let searchTimeout;
document.addEventListener("DOMContentLoaded", () => {
  const searchInput = document.getElementById("search-input");
  const searchButton = document.getElementById("search-button");
  const resultsContainer = document.getElementById("search-results");

  // --- The Core Logic Function ---
  const performSearch = () => {
    const query = searchInput.value.trim();

    if (query.length < 2) {
      resultsContainer.innerHTML = "";
      resultsContainer.style.display = "none";
      return;
    }

    fetch(`${API_BASE}/search?q=${encodeURIComponent(query)}`)
      .then((response) => {
        if (!response.ok) throw new Error(`${response.status}`);
        return response.json();
      })
      .then((data) => {
        resultsContainer.innerHTML = "";
        if (data.length === 0) {
          resultsContainer.innerHTML =
            "<div class='no-results'>No objects found</div>";
        } else {
          data.forEach((item) => {
            const resultItem = document.createElement("div");
            resultItem.className = "search-result-item";

            // Map your backend types to your frontend detail pages
            let detailPage = "index.html";
            if (item.type === "planet") detailPage = "planet-detail.html";
            else if (item.type === "star") detailPage = "star-detail.html";
            else if (item.type === "agency") detailPage = "agency-detail.html";
            else if (item.type === "messier_objects")
              detailPage = "messier-detail.html";
            else if (item.type === "astronauts")
              detailPage = "astronaut-detail.html";

            resultItem.innerHTML = `
                            <a href="${detailPage}?id=${item.id}">
                                <div class="result-info">
                                    <span class="result-name">${item.name}</span>
                                    <span class="result-type">${item.type.replace("_", " ")}</span>
                                </div>
                            </a>
                        `;
            resultsContainer.appendChild(resultItem);
          });
        }
        resultsContainer.style.display = "block";
      });
  };

  // --- Trigger 1: Clicking the Button ---
  searchButton.addEventListener("click", (event) => {
    event.preventDefault(); // Prevents the page from refreshing
    performSearch();
  });

  // --- Trigger 2: Pressing 'Enter' inside the input ---
  searchInput.addEventListener("keypress", (event) => {
    if (event.key === "Enter") {
      event.preventDefault();
      performSearch();
    }
  });

  // --- Trigger 3: Live typing (Debounced) ---
  searchInput.addEventListener("input", () => {
    clearTimeout(searchTimeout);
    searchTimeout = setTimeout(performSearch, 500);
  });
});
