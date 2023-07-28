let sidebar = document.getElementById("sidebar");
let mainContent = document.getElementById("mainContent");
sidebar.status = "closed"


function openSidebar() {
  sidebar.style.width = "250px";
  mainContent.style.marginLeft = "250px";
  sidebar.status = "open"
}

function closeSidebar() {
  sidebar.style.width = "30px";
  mainContent.style.marginLeft= "30px";
  sidebar.status = "closed"
}

function toggleSidebar() {
  if (sidebar.status == "closed") {
    openSidebar();
    sidebar.status == "open"
  } else {
    closeSidebar();
    sidebar.status == "closed"
  }
}

