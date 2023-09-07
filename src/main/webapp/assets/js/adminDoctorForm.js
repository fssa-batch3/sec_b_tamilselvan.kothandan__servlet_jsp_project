// Check if doctors array exists in local storage
const doctors = JSON.parse(localStorage.getItem("doctors")) || [];
const doctorForm = document.getElementById("doctorForm");
const passwordInput = document.getElementById("Password");
const passwordToggle = document.getElementById("passwordToggle");
const toggleIcon = document.getElementById("toggleIcon");

doctorForm.addEventListener("submit", (e) => {
  e.preventDefault(); // Prevent form from submitting
  // Get form values
  const name = document.getElementById("name").value;
  const specialty = document.getElementById("specialty").value;
  const img_src = document.getElementById("image").value;
  const Descripition = document.getElementById("Descripition").value;
  const experenice = document.getElementById("experenice").value;
  const location = document.getElementById("location").value;
  const clinic = document.getElementById("clinic").value;
  const Address = document.getElementById("Address").value;
  const hospitals_id = document.getElementById("hospital_id").value;
  const Password = document.getElementById("Password").value;
  const startingTime = document.getElementById("startingTime").value;
  const endingTime = document.getElementById("endingTime").value;
  const weekdays = [];
  const weekdaysObjects = weekdays.map((day) => ({ day }));

  // Get the checked checkboxes
  const checkboxes = document.querySelectorAll(
    'input[name="weekdays"]:checked'
  );
  checkboxes.forEach((checkbox) => {
    const day = checkbox.value;
    weekdaysObjects.push({ day });
  });

  console.log(weekdaysObjects);

  const id = Date.now();
  // Create object to store values
  const doctor = {
    id,
    doctor_name: name,
    specialization: [{ specialty }],
    img_src,
    Descripition,
    experenice,
    location,
    clinic,
    Address,
    hospitals_id,
    Password,
    working: [{ startingTime, endingTime }],
    weekdays: weekdaysObjects,
  };
  console.log(doctor);
  doctors.push(doctor);
  localStorage.setItem("doctors", JSON.stringify(doctors));
  // Clear form inputs
  doctorForm.reset();
  window.location.href = "./admin_doctor_page.html";
});
passwordToggle.addEventListener("click", () => {
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
