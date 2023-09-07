// Get hospitals data from local storage
const hospitals = JSON.parse(localStorage.getItem("hospitals"));

// Log hospitals data to console
console.log(hospitals);

// Loop through each hospital and create a box element for each one
for (let i = 0; i < hospitals.length; i++) {
  // Create the parent div element
  const parentDiv = document.createElement("div");
  parentDiv.classList.add("Box");

  // Create the child elements
  const imageLink = document.createElement("a");
  imageLink.setAttribute(
    "href",
    `../pages/products/hospital details/Apollo hospital details.html?hospitals_id=${hospitals[i].id}`
  );
  const image = document.createElement("img");
  image.setAttribute("src", hospitals[i].img_src);
  image.setAttribute("alt", hospitals[i].doctor_name);

  const heading = document.createElement("h3");
  heading.innerText = hospitals[i].hospital_name;

  const span = document.createElement("span");
  span.innerText = hospitals[i].Address;

  const shareDiv = document.createElement("div");
  shareDiv.classList.add("share");

  const facebookLink = document.createElement("a");
  facebookLink.setAttribute("href", hospitals[i].Facebook);
  facebookLink.classList.add("fab", "fa-facebook-f");

  const twitterLink = document.createElement("a");
  twitterLink.setAttribute("href", hospitals[i].Twitter);
  twitterLink.classList.add("fab", "fa-twitter");

  const instagramLink = document.createElement("a");
  instagramLink.setAttribute("href", hospitals[i].Instagram);
  instagramLink.classList.add("fab", "fa-instagram");

  const linkedinLink = document.createElement("a");
  linkedinLink.setAttribute("href", hospitals[i].linkedin);
  linkedinLink.classList.add("fab", "fa-linkedin");

  const signOut = document.createElement("a");
  signOut.setAttribute("href", "#");
  signOut.setAttribute("id", hospitals[i].id);
  signOut.classList.add("fas", "fa-sign-out-alt");

  // Add event listener to delete hospital data
  signOut.addEventListener("click", function deleteHospital() {
    const confirmation = window.confirm("Are you sure you want to delete?");
    if (confirmation("Are you sure to Delete ?")) {
      const { id } = this;
      const hospital = JSON.parse(localStorage.getItem("hospitals")) || [];

      // Find the index of the hospital to delete
      const indexOfHospital = hospital.findIndex(
        (e) => e.id === JSON.parse(id)
      );

      // Remove the hospital from the array
      if (indexOfHospital !== -1) {
        hospital.splice(indexOfHospital, 1);
      }

      localStorage.setItem("hospitals", JSON.stringify(hospitals));
      window.location.reload();
    }
  });

  // Append the child elements to the parent div
  imageLink.appendChild(image);
  parentDiv.appendChild(imageLink);
  parentDiv.appendChild(heading);
  parentDiv.appendChild(span);
  parentDiv.appendChild(shareDiv);

  shareDiv.appendChild(facebookLink);
  shareDiv.appendChild(twitterLink);
  shareDiv.appendChild(instagramLink);
  shareDiv.appendChild(linkedinLink);
  shareDiv.appendChild(signOut);

  // Select the HTML element where you want to append the parent div
  const container = document.querySelector(".box-container");
  container.appendChild(parentDiv);
}

// Redirect to the hospital form page
function hospitalAdd() {
  window.location.href = "./admin_hospital_form.html";
}
const hospital_add = document.getElementById("hospitalAdd");
hospital_add.addEventListener("click", hospitalAdd);
