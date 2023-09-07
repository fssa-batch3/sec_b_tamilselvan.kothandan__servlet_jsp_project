const appointment_details = JSON.parse(
  localStorage.getItem("appointment_details")
);
const name_id = JSON.parse(localStorage.getItem("name_id"));
const formData = JSON.parse(localStorage.getItem("formData"));
const findPatient = formData.find((e) => e.userName === name_id);

if (findPatient) {
  console.log(findPatient.userName);
}

// Get reference to the table body
const tableBody = document.querySelector("#appointmentTable tbody");

// Iterate over appointment_details and check for matching names
for (let i = 0; i < appointment_details.length; i++) {
  const appointment = appointment_details[i];
  if (appointment.userName === name_id) {
    console.log(appointment);
    // Create a new table row
    const row = document.createElement("tr");

    // Create table cells for each appointment property
    const appointmentDateCell = document.createElement("td");
    appointmentDateCell.textContent = appointment.appointmentDateTime;
    row.appendChild(appointmentDateCell);

    const doctorIdCell = document.createElement("td");
    doctorIdCell.textContent = appointment.doctorName;
    row.appendChild(doctorIdCell);

    const statusCell = document.createElement("td");
    statusCell.textContent = appointment.status;
    row.appendChild(statusCell);

    const nameCell = document.createElement("td");
    nameCell.textContent = appointment.userName;
    row.appendChild(nameCell);

    // Append the new row to the table body
    tableBody.appendChild(row);
  }
}
