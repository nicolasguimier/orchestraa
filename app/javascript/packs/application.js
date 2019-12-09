import "bootstrap";
import { initSortable } from '../plugins/init_sortable'; // <-- add this

initSortable(); // <-- add this




import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

// preview-invitation
// const previewButton = document.getElementById('preview-invitation');
// if (previewButton != null) {
//   const previewContentElement = document.getElementById('preview-content');
//   previewButton.addEventListener('click', (event) => {
//     const messageInput = document.getElementById('invitation_message');
//     let HtmlPreview = messageInput.value;
//     previewContentElement.innerHTML = HtmlPreview;
//   });
// }

// Display the invitation tabs, with status requested visible by default
const url = new URL(window.location);
const params = new URLSearchParams(url.search);
const query = params.get("status");

const inputs = document.querySelectorAll("input[name='tabs']");
inputs.forEach( (input) => {
  if (input.id === query) {
    input.checked = true;
    return false;
  }


});
