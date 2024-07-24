document.addEventListener("turbo:load", () => {
  const searchField = document.getElementById("q_name_cont");

  if (searchField) {
    let timeout;

    searchField.addEventListener("input", () => {
      clearTimeout(timeout);

      timeout = setTimeout(() => {
        console.log("Input detected");
        const form = searchField.closest("form");

        if (form) {
          console.log("Form found, submitting");
          form.requestSubmit(); // ここでフォームを送信します
        }
      }, 300); // デバウンスのための遅延を追加（例: 300ミリ秒）
    });
  }
});
