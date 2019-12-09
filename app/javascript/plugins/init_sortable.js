import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.getElementById('program-steps');
  const token = document.head.querySelector("[name~=csrf-token][content]").content;
  Sortable.create(list, {
    ghostClass: "ghost",
    animation: 150,
    onEnd: (event) => {
      console.log(event.item);
      const url = event.item.dataset.patchUrl;
      // const stepId = event.item.dataset.step;
      // alert(`${event.oldIndex} moved to ${event.newIndex} - url : /concerts/${concertId}/program_steps/${stepId}`);

      // const patchUrl = `http://localhost:3000/concerts/${concertId}/program_steps/${stepId}`;
      console.log(url);
      fetch(url, {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "PATCH",
        body: JSON.stringify({ authenticity_token: token, position: event.newIndex })
      })
      .then(response => response.json())
      .then((data) => {
      console.log(data.hits); // Look at local_names.default
      });

    }
  });
};

export { initSortable };
