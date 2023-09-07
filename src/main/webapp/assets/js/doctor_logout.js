function logout_link() {
  const confirmation = window.confirm("Are you sure you want to Logout?");
  if (confirmation) {
    localStorage.removeItem("doctor_id");
    window.location.href = "../index.html";
  }
}
document.addEventListener("DOMContentLoaded", () => {
  const logoutButton = document.getElementById("logoutLink");
  logoutButton.addEventListener("click", logout_link);
});
