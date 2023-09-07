document.addEventListener("DOMContentLoaded", () => {
  // retrieve user data from localStorage
  const doctor_id = JSON.parse(localStorage.getItem("doctor_id"));
  const doctors = JSON.parse(localStorage.getItem("doctors"));
  console.log(typeof doctor_id);

  // find the user data that matches the doctor_id
  function check(e) {
    return e.id === parseInt(doctor_id, 10);
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
  document.getElementById("endingTime").value =
    doctorData.working[0].endingTime;
  document.getElementById("startingTime").value =
    doctorData.working[0].startingTime;

  function btnDelete() {
    const indexOfUser = doctors.indexOf(doctorData);
    doctors.splice(indexOfUser, 1);

    localStorage.setItem("doctors", JSON.stringify(doctors));
    localStorage.removeItem("doctor_id");
    alert("account deleted");
    window.location.href = "./index.html";
  }
  document.getElementById("delete-btn").addEventListener("click", btnDelete);

  // redirect to edit profile page
  function btnEdit() {
    window.location.href = "./editProfile.html";
  }
  document.getElementById("edit-btn").addEventListener("click", btnEdit);
});
