function loginHandler(e) {
  e.preventDefault();

  const id = document.getElementById("id").value;
  const ID = parseInt(id, 10);
  const Password = document.getElementById("Password").value;

  const doctors = JSON.parse(localStorage.getItem("doctors")) || [];

  const exist =
    doctors.length &&
    doctors.some((d) => d.id === ID && d.Password === Password);

  if (!exist) {
    alert("Incorrect login credentials");
  } else {
    localStorage.setItem("doctor_id", JSON.stringify(ID));
    window.location.href = "./dashboard.html";
  }
}

document.addEventListener("DOMContentLoaded", () => {
  const login = document.getElementById("login");
  if (login) {
    login.addEventListener("submit", loginHandler);
  }
});

const passwordToggle = document.getElementById("passwordToggle");
const toggleIcon = document.getElementById("toggleIcon");
passwordToggle.addEventListener("click", () => {
  const passwordInput = document.getElementById("Password");
  const type = passwordInput.getAttribute("type");
  if (type === "password") {
    passwordInput.setAttribute("type", "text");
    toggleIcon.classList.remove("fa-eye");
    toggleIcon.classList.add("fa-eye-slash");
  } else {
    passwordInput.setAttribute("type", "password");
    toggleIcon.classList.remove("fa-eye-slash");
    toggleIcon.classList.add("fa-eye");
  }
});
