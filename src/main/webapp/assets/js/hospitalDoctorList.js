const queryString = window.location.search;
const hospitals_id = new URLSearchParams(queryString).get("hospital_id");
console.log(typeof hospitals_id);
// console.log(hospitals_id);

// Get the doctors list from local storage
const doctors = JSON.parse(localStorage.getItem("doctors"));

// Filter the doctors array based on the hospital ID
const filteredDoctors = doctors.filter(
  (doctor) => doctor.hospitals_id === parseInt(hospitals_id, 10)
);
console.log(filteredDoctors);

// Select the HTML element where you want to append the doctor list
const container = document.querySelector(".box-container");

// Loop through the filtered doctors array and create a div element for each doctor
filteredDoctors.forEach((doctor) => {
  // Create the parent div element
  const parentDiv = document.createElement("div");
  parentDiv.classList.add("Box");

  // Create the child elements
  const imageLink = document.createElement("a");
  imageLink.setAttribute(
    "href",
    `./doctor details/doctor details.html?doctor_id=${doctor.id}`
  );

  const image = document.createElement("img");
  image.setAttribute("src", doctor.img_src);
  image.setAttribute("alt", doctor.doctor_name);

  const heading = document.createElement("h3");
  heading.innerText = doctor.doctor_name;

  const specialization = document.createElement("p");
  specialization.innerText = doctor.specialization;

  // Append the child elements to the parent div
  imageLink.appendChild(image);
  parentDiv.appendChild(imageLink);
  parentDiv.appendChild(heading);
  parentDiv.appendChild(specialization);

  // Append the parent div to the doctor container
  container.appendChild(parentDiv);
});
