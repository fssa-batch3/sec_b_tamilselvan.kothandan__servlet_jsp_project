document.addEventListener("DOMContentLoaded", () => {
  const passwordToggle = document.getElementById("passwordToggle");
  const toggleIcon = document.getElementById("toggleIcon");

  passwordToggle.addEventListener("click", () => {
    const passwordInput = document.getElementById("password");
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

  const signInButton = document.querySelector("#signInButton");
  signInButton.addEventListener("click", signIn);

  const form = document.querySelector("form");
  const nameInput = document.querySelector("#fullname");

  function handleSubmit(event) {
    const nameValue = nameInput.value;
    if (nameValue.includes(" ")) {
      event.preventDefault();
      alert("Name cannot contain spaces");
    } else if (nameValue.length < 3) {
      event.preventDefault();
      alert("Name must be at least 3 characters long");
    }
  }

  form.addEventListener("submit", handleSubmit);
});

function signIn(e) {
  e.preventDefault();

  const fullname = document.getElementById("fullname").value;
  const password = document.getElementById("password").value;

  const admin = JSON.parse(localStorage.getItem("admin")) || [];

  const exist =
    admin.length &&
    admin.some(
      (data) => data.full_name === fullname && data.password === password
    );

  if (!exist) {
    alert("Incorrect login credentials");
  } else {
    localStorage.setItem("admin_id", JSON.stringify(fullname));
    window.location.href = "./admin.html";
  }
}
