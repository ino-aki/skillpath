// app/javascript/packs/application.js

document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('.search-form');

  if (form) {
    form.addEventListener('ajax:success', (event) => {
      const [data, _status, _xhr] = event.detail;
      document.getElementById('results').innerHTML = data;
    });

    form.addEventListener('ajax:error', (event) => {
      console.error('Search request failed:', event.detail);
    });
  }
});
