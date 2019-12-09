import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.getElementById('program-steps');
  Sortable.create(list, {
    ghostClass: "ghost",
    animation: 150,
    onEnd: (event) => {
      alert(`${event.oldIndex} moved to ${event.newIndex}`);
    }
  });
  console.log(list);
};

export { initSortable };
