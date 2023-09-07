const myOrigin = window.location.origin;
const home = `${myOrigin}/index.html`;

function logoutDoctor(event) {
  event.preventDefault();
  const confirmation = window.confirm("Are you sure you want to Logout?");
  if (confirmation) {
    localStorage.removeItem("doctor_id");
    window.location.href = home;
  }
}

const logoutButton = document.getElementById("logoutLink");
if (logoutButton) {
  logoutButton.addEventListener("click", logoutDoctor);
}
