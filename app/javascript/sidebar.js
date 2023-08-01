function toggleSidebar() {
  const content = document.querySelector('.main-content');
  const login_button = document.getElementById('login-button');
  const signup_button = document.getElementById('logout-button');
  
  document.querySelector('.sidebar').classList.toggle('active');
  
  if (content) {
    content.classList.toggle('active');
    login_button.classList.toggle('active');
    signup_button.classList.toggle('active');
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

