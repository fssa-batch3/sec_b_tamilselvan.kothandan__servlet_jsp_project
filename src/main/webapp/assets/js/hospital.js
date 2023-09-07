// Loop through the hospitals array and create a div element for each hospital
const hospitals = JSON.parse(localStorage.getItem("hospitals"));

for (let i = 0; i < hospitals.length; i++) {
  // create the parent div element
  const parentDiv = document.createElement("div");
  parentDiv.classList.add("Box");

  // create the child elements
  const imageLink = document.createElement("a");
  imageLink.setAttribute(
    "href",
    `./hospital details/Apollo hospital details.html?hospitals_id=${hospitals[i].hospitals_id}`
  );

  const image = document.createElement("img");
  image.setAttribute("src", hospitals[i].img_src);
  image.setAttribute("alt", hospitals[i].hospital_name);

  const heading = document.createElement("h3");
  heading.innerText = hospitals[i].hospital_name;

  const span = document.createElement("span");
  span.innerText = hospitals[i].Address;

  // append the child elements to the parent div
  imageLink.appendChild(image);
  parentDiv.appendChild(imageLink);
  parentDiv.appendChild(heading);
  parentDiv.appendChild(span);
  // select the HTML element where you want to append the parent div
  const container = document.querySelector(".box-container");
  container.appendChild(parentDiv);
}

const searchbox = document.getElementById("search-item");

searchbox.addEventListener("input", () => {
  const searchTerm = searchbox.value.toLowerCase();
  const box = document.querySelectorAll(".Box");
  const hospital = document.getElementsByTagName("h3");

  for (let i = 0; i < hospital.length; i++) {
    const match = box[i].getElementsByTagName("h3")[0];

    if (match) {
      const textvalue = match.textContent || match.innerHTML;

      if (textvalue.toLowerCase().indexOf(searchTerm) > -1) {
        box[i].style.display = "";
      } else {
        box[i].style.display = "none";
      }
    }
  }
});
