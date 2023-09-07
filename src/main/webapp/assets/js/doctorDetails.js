const params = new URLSearchParams(window.location.search);
const doctor_id = params.get("doctor_id");
console.log(typeof doctor_id);
const doctors = JSON.parse(localStorage.getItem("doctors"));

const find_doctor = doctors.find((e) => e.id === parseInt(doctor_id, 10));
console.log(find_doctor);

document.getElementById("doctor_name").innerHTML = find_doctor.doctor_name;
document.getElementById("specialty").innerText =
  find_doctor.specialization[0].specialty;
document.getElementById("Descripition").innerText = find_doctor.Descripition;

const doctor_img = document.getElementById("img_src");
doctor_img.setAttribute("src", find_doctor.img_src);
document.getElementById("day").innerText = find_doctor.weekdays
  .map((day) => Object.values(day)[0])
  .join(", ");

document.getElementById("clinic").innerText = find_doctor.clinic;
document.getElementById("location").innerText = find_doctor.location;
document.getElementById("Address").innerText = find_doctor.Address;
document.getElementById(
  "Timing"
).innerText = `${find_doctor.working[0].startingTime} - ${find_doctor.working[0].endingTime}`;

const appoinment_link = document.getElementById("ajun_details");
appoinment_link.setAttribute(
  "href",
  `../appointment page.html?doctor_id=${doctor_id}`
);
