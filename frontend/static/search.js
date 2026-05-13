document.addEventListener("DOMContentLoaded", async () => {
  const searchInput = document.getElementById("search-input").value.trim();
  const resultsContainer = document.getElementById("search-results");
  //2. variable to hold our timer to prevent spamming the server
  let searchTimeout;

  //3. listen for every keystroke
  searchInput.addEventListener("input", (event) => {
    //clear the previous timer
    clearTimeout(searchTimeout);

    //get the current value and clean it up
    const query = event.target.value.trim();

    //4. if the search box is empty, clear results and stop
    if (query.length < 2) {
      resultsContainer.innerHTML = "";
      resultsContainer.style.display = "none";
      return;
    }
    //5. Start a new timer
    searchTimeout = setTimeout(() => {
      //encode the query to handle special characters safely
      fetch(`/search?q=${encodeURIComponent(query)}`)
        .then((response) => response.json())
        .then((data) => {
          //6. clear old results before drawing new ones
          resultsContainer.innerHTML = "";

          if (data.length === 0) {
            resultsContainer.innerHTML =
              "<div class='no-results'>No ojects found</div>";
          } else {
            //7. Loop through the results(Planets, stars, messierobjects etc)
            data.forEach((item) => {
              const resultItem = document.createElement("div");
              resultItem.className = "search-result-item";

              //8. systems logic: use the type we defined in the search.py endpoint to build the right link
              let detailPage = "";
              if (item.type === "planet") detailPage = "planet-detail.html";
              else if (item.type === "star") detailPage = "star-detail.html";
              else if (item.type === "agency")
                detailPage = "agency-detail.html";
              else if (item.type === "messier_objects")
                detailPage = "messier-detail.html";

              resultItem.innerHTML = `
              <a href="${detailPage}?id=${item.id}">
                <div class="result-info">
                  <span class="result-name">${item.name}</span>
                  <span class="result-type">${item.type.replace("_", "")}</span>
                </div>
                <p class="result-desc">${item.description || ""}</p>
              </a>
              `;
            });
          }
          //Show the container now that we have data
          resultsContainer.style.display = "block";
        })
        .catch((err) => console.error("Search system error:", err));
    }, 300); //Wait 300ms after the user stops typing
  });
});
