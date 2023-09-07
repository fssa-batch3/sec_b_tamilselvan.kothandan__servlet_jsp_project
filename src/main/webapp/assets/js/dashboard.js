const doctorId = JSON.parse(localStorage.getItem("doctor_id"));
const doctorID = String(doctorId, 10);
console.log(typeof doctorID);
const appointmentDetails = JSON.parse(
  localStorage.getItem("appointment_details")
);

const doctorAppointments = appointmentDetails.filter(
  (appointment) => appointment.doctor_id === doctorID
);
console.log(doctorAppointments);
const appointDetails = document.getElementById("appointDetails");
let waitingAppointmentsExist = false;

for (let i = 0; i < doctorAppointments.length; i++) {
  if (doctorAppointments[i].status === "Waiting") {
    const appointment = doctorAppointments[i];
    waitingAppointmentsExist = true;
    const appointmentElement = document.createElement("div");
    appointmentElement.classList.add("appointment-card");

    const nameElement = document.createElement("h2");
    nameElement.textContent = appointment.userName;

    const ageGenderElement = document.createElement("div");
    ageGenderElement.classList.add("each");

    const ageElement = document.createElement("div");
    ageElement.textContent = `Age: ${appointment.age}`;

    const genderElement = document.createElement("div");
    genderElement.style.marginLeft = "20px";
    genderElement.textContent = `Gender: ${appointment.gender}`;

    const dateElement = document.createElement("div");
    dateElement.classList.add("each");
    dateElement.textContent = "Date and time of consultation:";

    const dateTimeElement = document.createElement("div");
    dateTimeElement.textContent = appointment.appointmentDateTime;

    const mobileElement = document.createElement("div");
    mobileElement.classList.add("each");
    mobileElement.textContent = "Mobile number:";

    const numberElement = document.createElement("div");
    numberElement.textContent = appointment.number;

    const statusElement = document.createElement("div");
    statusElement.classList.add("each");
    statusElement.textContent = "Status:";

    const appointmentStatusElement = document.createElement("div");
    appointmentStatusElement.textContent = appointment.status;

    const buttonContainerElement = document.createElement("div");
    buttonContainerElement.classList.add("each");

    const acceptButton = document.createElement("button");
    acceptButton.type = "button";
    acceptButton.id = "accept";
    acceptButton.textContent = "ACCEPT";
    acceptButton.addEventListener("click", () =>
      acceptAppointment(appointment.id)
    );

    const rejectButton = document.createElement("button");
    rejectButton.type = "button";
    rejectButton.id = "reject";
    rejectButton.textContent = "REJECT";
    rejectButton.addEventListener("click", () =>
      rejectAppointment(appointment.id)
    );

    buttonContainerElement.appendChild(acceptButton);
    buttonContainerElement.appendChild(rejectButton);

    ageGenderElement.appendChild(ageElement);
    ageGenderElement.appendChild(genderElement);

    appointmentElement.appendChild(nameElement);
    appointmentElement.appendChild(ageGenderElement);
    appointmentElement.appendChild(dateElement);
    appointmentElement.appendChild(dateTimeElement);
    appointmentElement.appendChild(mobileElement);
    appointmentElement.appendChild(numberElement);
    appointmentElement.appendChild(statusElement);
    appointmentElement.appendChild(appointmentStatusElement);
    appointmentElement.appendChild(buttonContainerElement);

    appointDetails.appendChild(appointmentElement);
  }
}

// Rest of the code for acceptAppointment, rejectAppointment, and event listener
// ...

if (!waitingAppointmentsExist) {
  const noAppointmentElement = document.createElement("div");
  noAppointmentElement.setAttribute("class", "alert");
  noAppointmentElement.textContent = "No waiting appointments available.";
  appointDetails.appendChild(noAppointmentElement);
}

function acceptAppointment(appointmentId) {
  const appointmentToUpdate = appointmentDetails.find(
    (appointment) => appointment.id === appointmentId
  );
  if (appointmentToUpdate) {
    appointmentToUpdate.status = "Accept";
    // Update the appointment details array in localStorage
    localStorage.setItem(
      "appointment_details",
      JSON.stringify(appointmentDetails)
    );
    window.location.reload();
  }
}

function rejectAppointment(appointmentId) {
  const appointmentToUpdate = appointmentDetails.find(
    (appointment) => appointment.id === appointmentId
  );
  if (appointmentToUpdate) {
    appointmentToUpdate.status = "Reject";
    // Update the appointment details array in localStorage
    localStorage.setItem(
      "appointment_details",
      JSON.stringify(appointmentDetails)
    );
    window.location.reload();
  }
}

// ...
// ...
document.addEventListener("DOMContentLoaded", () => {
  rejectAppointment();
  acceptAppointment();
});

const doctorAcceptedList = appointmentDetails.filter(
  (appointment) => appointment.status === "Accept"
);

const appointmentList = document.getElementById("appointmentList");
if (doctorAcceptedList.length === 0) {
  const noAppointmentElement = document.createElement("div");
  noAppointmentElement.id = "no-appointment";
  noAppointmentElement.textContent = "No appointments available.";

  appointmentList.appendChild(noAppointmentElement);
} else {
  for (let i = 0; i < doctorAcceptedList.length; i++) {
    const appointment = doctorAcceptedList[i];
    const individualElement = document.createElement("div");
    individualElement.classList.add("individual");
    individualElement.id = appointment.userName;

    const avatarElement = document.createElement("div");
    avatarElement.classList.add("avatar");
    avatarElement.textContent = String(appointment.userName).charAt(0);

    const nameElement = document.createElement("div");
    nameElement.id = "names";
    nameElement.textContent = String(appointment.userName);

    const timeElement = document.createElement("div");
    timeElement.id = "time";
    timeElement.textContent = appointment.appointmentDateTime;

    const nameContainer = document.createElement("div");
    nameContainer.classList.add("name");
    nameContainer.appendChild(nameElement);
    nameContainer.appendChild(timeElement);

    const buttonsContainer = document.createElement("div");
    buttonsContainer.classList.add("buttons-container");

    const consultedButton = document.createElement("button");
    consultedButton.id = "consulted-button";
    consultedButton.textContent = "Consulted";
    consultedButton.addEventListener("click", () =>
      markAsConsulted(appointment.id)
    );

    const cancelButton = document.createElement("button");
    cancelButton.id = "cancel-button";
    cancelButton.textContent = "Cancel";
    cancelButton.addEventListener("click", () =>
      cancelAppointment(appointment.id)
    );

    buttonsContainer.appendChild(consultedButton);
    buttonsContainer.appendChild(cancelButton);
    buttonsContainer.appendChild(consultedButton);
    buttonsContainer.appendChild(cancelButton);

    individualElement.appendChild(avatarElement);
    individualElement.appendChild(nameContainer);
    individualElement.appendChild(buttonsContainer);

    appointmentList.appendChild(individualElement);
  }
}
function markAsConsulted(appointmentId) {
  // Function logic to mark appointment as consulted
  const appointmentToUpdate = appointmentDetails.find(
    (appointment) => appointment.id === appointmentId
  );
  if (appointmentToUpdate) {
    appointmentToUpdate.status = "Consulted";
    // Update the appointment details array in localStorage
    localStorage.setItem(
      "appointment_details",
      JSON.stringify(appointmentDetails)
    );
    window.location.reload();
  }
}

function cancelAppointment(appointmentId) {
  // Function logic to cancel appointment
  const appointmentToUpdate = appointmentDetails.find(
    (appointment) => appointment.id === appointmentId
  );
  if (appointmentToUpdate) {
    appointmentToUpdate.status = "Cancel";
    // Update the appointment details array in localStorage
    localStorage.setItem(
      "appointment_details",
      JSON.stringify(appointmentDetails)
    );
    window.location.reload();
  }
}

document.addEventListener("DOMContentLoaded", () => {
  markAsConsulted();
  cancelAppointment();
});
const doctorRejectedList = appointmentDetails.filter(
  (appointment) => appointment.status === "reject"
);
console.log(doctorRejectedList);
