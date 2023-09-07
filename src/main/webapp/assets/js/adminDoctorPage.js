const doctors = JSON.parse(localStorage.getItem("doctors"));
console.log(doctors);

for (let i = 0; i < doctors.length; i++) {
  // create the parent div element
  const parentDiv = document.createElement("div");
  parentDiv.classList.add("Box");

  // create the child elements
  const imageLink = document.createElement("a");
  imageLink.setAttribute(
    "href",
    `../pages/products/doctor details/doctor details.html?doctor_id=${doctors[i].id}`
  );
  const image = document.createElement("img");
  image.setAttribute("src", doctors[i].img_src);
  image.setAttribute("alt", doctors[i].doctor_name);

  const heading = document.createElement("h3");
  heading.innerText = doctors[i].doctor_name;

  const span = document.createElement("span");
  span.innerText = doctors[i].specialization[0].specialty;

  const shareDiv = document.createElement("div");
  shareDiv.classList.add("share");

  const Delete = document.createElement("a");
  Delete.setAttribute("href", "#");
  Delete.setAttribute("id", doctors[i].id);
  Delete.classList.add("fas", "fa-trash");

  Delete.addEventListener("click", function deleteDoctor() {
    const confirmation = window.confirm("Are you sure you want to delete?");
    if (confirmation) {
      const id = this.getAttribute("id");
      console.log(typeof id);
      const doctorsArray = JSON.parse(localStorage.getItem("doctors"));
      // Find the index of the doctor to delete
      const indexOfDoctor = doctorsArray.findIndex(
        (doctor) => doctor.id === JSON.parse(id)
      );
      // Remove the doctor from the array
      if (indexOfDoctor !== -1) {
        doctorsArray.splice(indexOfDoctor, 1);
      }
      localStorage.setItem("doctors", JSON.stringify(doctorsArray));
      window.location.reload();
    }
  });
  // append the child elements to the parent div
  imageLink.appendChild(image);
  parentDiv.appendChild(imageLink);
  parentDiv.appendChild(heading);
  parentDiv.appendChild(span);
  parentDiv.appendChild(shareDiv);
  shareDiv.appendChild(Delete);

  // select the HTML element where you want to append the parent div
  const container = document.querySelector(".box-container");
  container.appendChild(parentDiv);
}

function add_doctors() {
  window.location.href = "./admin_doctor_form.html";
}
const doctorAdd = document.getElementById("add_doctors");
doctorAdd.addEventListener("click", add_doctors);
