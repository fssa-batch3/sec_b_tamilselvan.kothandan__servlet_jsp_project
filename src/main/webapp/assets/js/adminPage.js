// Redirect to the admin doctor page
function add_doctor() {
  window.location.href = "./admin_doctor_page.html";
}
function add_hospital() {
  window.location.href = "./admin_hospital.html";
}

const addHospitalBtn = document.getElementById("addHospitalBtn");
addHospitalBtn.addEventListener("click", add_hospital);

const addDoctorBtn = document.getElementById("addDoctorBtn");
addDoctorBtn.addEventListener("click", add_doctor);
