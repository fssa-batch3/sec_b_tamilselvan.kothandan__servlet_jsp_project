// retrieve user data from localStorage
const doctor_id = JSON.parse(localStorage.getItem("doctor_id"));
console.log(typeof doctor_id);
const doctors = JSON.parse(localStorage.getItem("doctors"));

// find the user data that matches the doctor_id
function check(e) {
  return e.id === JSON.parse(doctor_id);
}
const doctorData = doctors.find(check);

document.getElementById("Name").value = doctorData.doctor_name;
document.getElementById("specialty").value =
  doctorData.specialization[0].specialty;
document.getElementById("description").value = doctorData.Descripition;
document.getElementById("experience").value = doctorData.experenice;
document.getElementById("location").value = doctorData.location;
document.getElementById("clinic").value = doctorData.clinic;
document.getElementById("address").value = doctorData.Address;
document.getElementById("startingTime").value =
  doctorData.working[0].startingTime;
document.getElementById("endingTime").value = doctorData.working[0].endingTime;
function btnSaveClicked() {
  const name = document.getElementById("Name").value;
  const specialty = document.getElementById("specialty").value;
  const description = document.getElementById("description").value;
  const experience = document.getElementById("experience").value;
  const location = document.getElementById("location").value;
  const clinic = document.getElementById("clinic").value;
  const address = document.getElementById("address").value;
  const startingTime = document.getElementById("startingTime").value;
  const endingTime = document.getElementById("endingTime").value;

  doctorData.doctor_name = name;
  doctorData.specialization[0].specialty = specialty;
  doctorData.Descripition = description;
  doctorData.experenice = experience;
  doctorData.location = location;
  doctorData.clinic = clinic;
  doctorData.Address = address;
  doctorData.working[0].startingTime = startingTime;
  doctorData.working[0].endingTime = endingTime;

  localStorage.setItem("doctors", JSON.stringify(doctors));
  alert("updated successfully");
  window.location.href = "./profile.html";
}
const btnSave = document.getElementById("btn-save");
btnSave.addEventListener("click", btnSaveClicked);
