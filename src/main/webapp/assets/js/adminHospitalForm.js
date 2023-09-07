const hospitalForm = document.getElementById("hospitalForm");

hospitalForm.addEventListener("submit", (e) => {
  e.preventDefault(); // Prevent form from submitting

  // Get form values
  const name = document.getElementById("name").value;
  const address = document.getElementById("Address").value;
  const img_src = document.getElementById("img_src").value;
  const linkedin = document.getElementById("linkedin").value;
  const facebook = document.getElementById("Facebook").value;
  const twitter = document.getElementById("Twitter").value;
  const instagram = document.getElementById("Instagram").value;
  const details = document.getElementById("details").value;
  const hospital_id = document.getElementById("hospital_id").value;

  const id = Date.now();

  // Create object to store values
  const hospital = {
    id,
    hospital_name: name,
    address,
    img_src,
    linkedin,
    facebook,
    twitter,
    instagram,
    details,
    hospital_id,
  };

  // Check if hospitals array exists in local storage
  let hospitals = [];
  if (localStorage.getItem("hospitals")) {
    hospitals = JSON.parse(localStorage.getItem("hospitals"));
  }
  // Add new hospital to array and save to local storage
  hospitals.push(hospital);
  localStorage.setItem("hospitals", JSON.stringify(hospitals));
  // Clear form inputs
  hospitalForm.reset();
  // Display success message to user
  const successDiv = document.createElement("div");
  successDiv.innerText = "Hospital added successfully!";
  document.getElementById("success-message").appendChild(successDiv);
});
