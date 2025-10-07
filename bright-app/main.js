// Example imports from the local linked Brightspace UI package
// If you use npm link, these will resolve to your local clone
import '@brightspace-ui/core/components/button/button.js';
import '@brightspace-ui/core/components/alert/alert.js';

const root = document.getElementById('app');
root.innerHTML = `
  <div style="padding:40px;font-family:system-ui,Segoe UI,Roboto,Arial;background:#081223;color:#e6eef8;min-height:100vh">
    <h2>Brightspace UI — Local prototype</h2>
    <div style="display:flex;gap:12px;align-items:center;margin-top:12px">
      <d2l-button id="btn">Click me</d2l-button>
      <d2l-alert type="info">This alert is from the local Brightspace UI package.</d2l-alert>
    </div>
  </div>
`;

document.getElementById('btn').addEventListener('click', () => alert('Clicked'));
