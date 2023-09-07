const name_id = JSON.parse(localStorage.getItem("name_id"));
const formData = JSON.parse(localStorage.getItem("formData"));

function check(e) {
  return e.userName === name_id;
}

const user_data = formData.find(check);

document.getElementById("name").value = user_data.userName;
document.getElementById("email").value = user_data.email;
document.getElementById("phone_number").value = user_data.phone_number;
document.getElementById("date_of_birth").value = user_data.date_of_birth;
document.getElementById("gender").value = user_data.gender;
document.getElementById("blood_group").value = user_data.blood_group;
document.getElementById("street_name").value = user_data.street_name;
document.getElementById("colony").value = user_data.colony;
document.getElementById("city").value = user_data.city;
document.getElementById("state").value = user_data.state;
document.getElementById("country").value = user_data.country;
document.getElementById("pincode").value = user_data.pincode;
document.getElementById("drug").value = user_data.drug;
document.getElementById("disease").value = user_data.disease;
document.getElementById("operation_dates").value = user_data.operation_dates;
document.getElementById("medications").value = user_data.medications;
document.getElementById("image").value = user_data.image;

function btnSaveClicked() {
  // e.preventDefault()
  const edit_name = document.getElementById("name").value;
  const edit_email = document.getElementById("email").value;
  const edit_phone_number = document.getElementById("phone_number").value;
  const edit_date_of_birth = document.getElementById("date_of_birth").value;
  const edit_gender = document.getElementById("gender").value;
  const edit_blood_group = document.getElementById("blood_group").value;
  const edit_street_name = document.getElementById("street_name").value;
  const edit_colony = document.getElementById("colony").value;
  const edit_city = document.getElementById("city").value;
  const edit_state = document.getElementById("state").value;
  const edit_country = document.getElementById("country").value;
  const edit_pincode = document.getElementById("pincode").value;
  const edit_drug = document.getElementById("drug").value;
  const edit_disease = document.getElementById("disease").value;
  const edit_operation_dates = document.getElementById("operation_dates").value;
  const edit_medications = document.getElementById("medications").value;
  const edit_image = document.getElementById("image").value;
  const currentDate = new Date();
  const userDate = new Date(edit_date_of_birth);
  const dobRegex = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;

  // Validation for phone number
  const phoneRegex = /^[6-9]\d{9}$/;
  if (!phoneRegex.test(edit_phone_number)) {
    alert("Invalid phone number format!");
    return;
  }

  // Validation for gender
  if (
    edit_gender !== "Male" &&
    edit_gender !== "Female" &&
    edit_gender !== "Other"
  ) {
    alert("Please select a valid gender!");
    return;
  }

  // Validation for date of birth
  if (!dobRegex.test(edit_date_of_birth)) {
    alert("Invalid date of birth format!");
    return;
  }
  if (userDate >= currentDate) {
    alert("Date of birth must be in the past!");
    return;
  }
  const oneDay = 24 * 60 * 60 * 1000; // one day in milliseconds
  const diffDays = Math.round(Math.abs((userDate - currentDate) / oneDay)); // calculate the difference in days between the two dates
  if (diffDays <= 1) {
    alert("Date of birth cannot be a continuous date or the current date!");
    return;
  }

  // Validation for blood group
  const bloodGroups = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
  if (!bloodGroups.includes(edit_blood_group)) {
    alert("Please select a valid blood group!");
    return;
  }

  user_data.userName = edit_name;
  user_data.email = edit_email;
  user_data.phone_number = edit_phone_number;
  user_data.date_of_birth = edit_date_of_birth;
  user_data.gender = edit_gender;
  user_data.blood_group = edit_blood_group;
  user_data.street_name = edit_street_name;
  user_data.colony = edit_colony;
  user_data.city = edit_city;
  user_data.state = edit_state;
  user_data.country = edit_country;
  user_data.pincode = edit_pincode;
  user_data.drug = edit_drug;
  user_data.disease = edit_disease;
  user_data.operation_dates = edit_operation_dates;
  user_data.medications = edit_medications;
  user_data.image = edit_image;

  localStorage.setItem("formData", JSON.stringify(formData));
  alert("updated successfully");
  window.location.href = "./profile.html";
}
const btnSave = document.getElementById("btn-save");
btnSave.addEventListener("click", btnSaveClicked);
