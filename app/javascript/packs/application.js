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

// Display New category card on musical work
const newCategoryBox = document.querySelector(".add-category-box")
const newCategorySelector = document.getElementById("category-selector")

if (newCategorySelector) {
  newCategorySelector.addEventListener("change", function() {
    newCategoryBox.className = "col-6"
    newCategoryBox.innerHTML =
`
  <div class="box work-box">
    <h2 class="icon icon-` + newCategorySelector.value.toLowerCase() + `">`+ newCategorySelector.value +`</h2>
    <div class="main-box">
      <div class="edit-box">
        <div class="add-instrument">
          <form action="<%= musical_work_work_instruments_path(@musical_work) %>" method="post">
            <select onchange="this.form.submit()" name="work_instrument[instrument_id]" id="instrument-selector">
              <option value="add-instrument">- Add instrument -</option>
                <option value="10">Violon</option>
            </select>
            <input type="hidden" name="authenticity_token" id="authenticity_token" value="<%= form_authenticity_token %>" />
          </form>
        </div>
      </div>
    </div>
  </div>
`;
  });
}
