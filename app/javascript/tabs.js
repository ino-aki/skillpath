document.addEventListener('turbo:load', function() {
  const tabButtons = document.querySelectorAll('.tab-button');
  const tabContents = document.querySelectorAll('.tab-content');

  tabButtons.forEach(button => {
    button.addEventListener('click', () => {
      // 既にアクティブなタブを判別するための変数を定義
      const activeButton = document.querySelector('.tab-button.active');
      const activeContent = document.querySelector('.tab-content.active');

      // クリックされたボタンが既にアクティブな場合は何もしない
      if (button.classList.contains('active')) return;

      // アクティブなボタンとコンテンツのクラスを削除
      activeButton.classList.remove('active');
      activeContent.classList.remove('active');

      // クリックされたボタンにアクティブクラスを追加
      button.classList.add('active');
      // 対応するコンテンツを表示
      document.getElementById(button.dataset.tab).classList.add('active');
    });
  });
});
