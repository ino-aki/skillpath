document.addEventListener('turbo:load', () => {
  const form = document.querySelector("#study-plan-form");

  form.addEventListener("submit", async (event) => {
    event.preventDefault();

    const formData = new FormData(form);
    const url = form.getAttribute("action");

    try {
      const response = await fetch(url, {
        method: "POST",
        body: formData,
      });

      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }

      const data = await response.json();
      displayResult(data.total_study_hours, data.study_goal_hours, data.hours_difference);
    } catch (error) {
      console.error("Error:", error);
      // エラーハンドリングが必要な場合に処理を追加する
    }
  });

  function displayResult(totalStudyHours, studyGoalHours, hoursDifference) {
    const resultContainer = document.querySelector("#study-plan-result");
    resultContainer.textContent = `計画された勉強時間は ${totalStudyHours} 時間です。`;

    const feedbackContainer = document.querySelector("#study-plan-feedback");

    if (hoursDifference <= 0) {
      const surplusHours = Math.abs(hoursDifference);
      feedbackContainer.innerHTML = `おめでとうございます！計画された勉強時間は目標を達成しています。<br>目標を ${surplusHours} 時間上回っています。`;
    } else {
      feedbackContainer.textContent = `目標まであと ${hoursDifference} 時間の勉強が必要です。頑張りましょう！`;
    }
  }
});
