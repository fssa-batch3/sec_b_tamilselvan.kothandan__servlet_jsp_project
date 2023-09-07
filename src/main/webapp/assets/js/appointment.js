const params = new URL(document.location).searchParams;
const doctor_id = params.get("doctor_id");
console.log(doctor_id);

const doctors = JSON.parse(localStorage.getItem("doctors"));
const name_id = JSON.parse(localStorage.getItem("name_id"));
const formData = JSON.parse(localStorage.getItem("formData"));

const find_doctor = doctors.find((e) => e.id === JSON.parse(doctor_id));
console.log(find_doctor);

// if (find_doctor) {
//   const doctorName = find_doctor.doctor_name;
//   console.log(doctorName);
// } else {
//   console.log("Doctor not found");
// }
const doctorName = find_doctor.doctor_name;
console.log(doctorName);
const user = formData.find((e) => e.userName === name_id);
console.log(user);
document.getElementById("name").value = user.userName;
document.getElementById("number").value = user.phone_number;
document.getElementById("gender_").value = user.gender;
document.getElementById("email").value = user.email;

const form = document.querySelector("form");
form.addEventListener("submit", appointment);

function generateAppointmentId() {
  const timestamp = Date.now().toString();
  const random = Math.floor(Math.random() * 1000)
    .toString()
    .padStart(3, "0");
  return timestamp + random;
}

function appointment(e) {
  e.preventDefault();

  const now = new Date();
  const appointmentId = generateAppointmentId();
  const appointmentDateTime = new Date(
    document.getElementById("date_time").value
  );
  const formattedAppointmentDateTime = appointmentDateTime.toLocaleString();
  const str = {
    id: appointmentId,
    userName: document.getElementById("name").value,
    email: document.getElementById("email").value,
    number: document.getElementById("number").value,
    gender: document.getElementById("gender_").value,
    age: document.getElementById("age").value,
    appointmentDateTime: formattedAppointmentDateTime,
    appointmentBookingDate: now.toLocaleString(),
    doctor_id,
    doctorName,
    status: "Waiting",
  };

  const appointmentDetails =
    JSON.parse(localStorage.getItem("appointment_details")) || [];

  const existingAppointment = appointmentDetails.find(
    (Appointments) => Appointments.id === appointmentId
  );

  if (existingAppointment) {
    alert("Appointment already booked.");
    return;
  }

  appointmentDetails.push(str);
  localStorage.setItem(
    "appointment_details",
    JSON.stringify(appointmentDetails)
  );

  alert("Successfully booked appointment.");
  window.location.href = `./appointment booked page.html?doctor_id=${doctor_id}`;
}
