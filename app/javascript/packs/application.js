import "bootstrap";


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
