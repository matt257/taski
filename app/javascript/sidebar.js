function toggleSidebar() {
  const content = document.querySelector('.main-content');
  document.querySelector('.sidebar').classList.toggle('active');
  if (content) {
    content.classList.toggle('active');
  }
}

document.addEventListener('DOMContentLoaded', () => {
  const button = document.getElementById('toggleButton');
  if (button) {
    button.addEventListener('click', toggleSidebar);
  } else {
    console.log("where'd you put the button?");
  }
});

