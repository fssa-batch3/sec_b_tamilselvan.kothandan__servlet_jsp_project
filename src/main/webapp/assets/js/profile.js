document.addEventListener("DOMContentLoaded", () => {
  // retrieve user data from localStorage
  const nameId = JSON.parse(localStorage.getItem("name_id"));
  console.log(nameId);
  const formData = JSON.parse(localStorage.getItem("formData"));
  console.log(formData);

  // find the user data that matches the nameId
  const userData = formData.find((e) => e.userName === nameId);
  console.log(userData);

  // fill in the input fields with the user data
  document.getElementById("name").value = userData.userName;
  document.getElementById("email").value = userData.email;
  document.getElementById("phone_number").value = userData.phone_number;
  document.getElementById("date_of_birth").value = userData.date_of_birth;
  document.getElementById("gender").value = userData.gender;
  document.getElementById("blood_group").value = userData.blood_group;
  document.getElementById("street_name").value = userData.street_name;
  document.getElementById("colony").value = userData.colony;
  document.getElementById("city").value = userData.city;
  document.getElementById("state").value = userData.state;
  document.getElementById("country").value = userData.country;
  document.getElementById("pincode").value = userData.pincode;
  document.getElementById("drug").value = userData.drug;
  document.getElementById("disease").value = userData.disease;
  document.getElementById("operation_dates").value = userData.operation_dates;
  document.getElementById("medications").value = userData.medications;
  document.getElementById("image").setAttribute("src", userData.image);
  // delete user data from formData and localStorage
  function btnDelete() {
    const indexOfUser = formData.indexOf(userData);
    formData.splice(indexOfUser, 1);

    localStorage.setItem("formData", JSON.stringify(formData));
    localStorage.removeItem("name_id");
    alert("account deleted");
    window.location.href = "../../index.html";
  }
  document.getElementById("delete-btn").addEventListener("click", btnDelete);

  // redirect to edit profile page
  function btnEdit() {
    window.location.href = "./edit_profile.html";
  }
  document.getElementById("edit-btn").addEventListener("click", btnEdit);
});
