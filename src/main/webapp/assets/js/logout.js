const myOrigin = window.location.origin;
const home = `${myOrigin}/index.html`;

function logoutLink() {
  const confirmation = window.confirm("Are you sure you want to logout?");
  if (confirmation) {
    localStorage.removeItem("admin_id");
    window.location.href = `${home}`;
  }
}

const logoutBtn = document.getElementById("logoutBtn");
logoutBtn.addEventListener("click", logoutLink);
