document.addEventListener("turbo:load", () => {
  const searchField = document.getElementById("q_name_cont");
  const qualificationsList = document.getElementById("qualifications_list");

  if (searchField) {
    let timeout;

    searchField.addEventListener("input", () => {
      clearTimeout(timeout);

      timeout = setTimeout(() => {
        console.log("Input detected");
        const form = searchField.closest("form");

        if (form) {
          console.log("Form found, submitting asynchronously");

          const formData = new FormData(form);
          const queryParams = new URLSearchParams(formData).toString();
          const url = `${form.action}?${queryParams}`;

          fetch(url, {
            method: 'GET',
            headers: {
              'Accept': 'application/json', // 必要に応じてヘッダーを追加
              'X-Requested-With': 'XMLHttpRequest' // RailsでAjaxリクエストとして扱うため
            }
          })
          .then(response => {
            if (!response.ok) {
              throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
          })
          .then(data => {
            console.log("Response received:", data);

            // 結果表示コンテナをクリア
            qualificationsList.innerHTML = "";

            // 結果をHTMLとしてリスト表示
            data.forEach(qualification => {
              const cardHTML = `
                <div class="col">
                  <a href="/qualifications/${qualification.id}" class="text-decoration-none text-dark">
                    <div class="card h-100">
                      <div class="card-body">
                        <h5 class="card-title">${qualification.name}</h5>
                        <p class="card-text">${qualification.description}</p>
                      </div>
                    </div>
                  </a>
                </div>
              `;
              qualificationsList.insertAdjacentHTML('beforeend', cardHTML);
            });
          })
          .catch(error => {
            console.error("Error submitting form:", error);
          });
        }
      }, 300); // デバウンスのための遅延を追加（例: 300ミリ秒）
    });
  }
});
