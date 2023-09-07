const params = new URLSearchParams(window.location.search);
const hospital_id = params.get("hospitals_id"); // Corrected query parameter name
console.log(typeof hospital_id);
const hospitals = JSON.parse(localStorage.getItem("hospitals"));
console.log(hospital_id); // Check if hospital_id is not null or undefined
console.log(hospitals); // Check if hospitals is not null or undefined and has expected data

const find_hospitals = hospitals.find(
  (e) => e.hospitals_id === parseInt(hospital_id, 10)
); // Corrected property name

console.log(find_hospitals);

const details_p = document.getElementById("details");

if (find_hospitals) {
  document.getElementById("name").innerText = find_hospitals.hospital_name;
  details_p.innerText = find_hospitals.Details;

  const doctor_img = document.getElementById("imgsrc");
  doctor_img.setAttribute("src", find_hospitals.img_src);

  const apolloHospital = document.getElementById("apolloHospital");
  apolloHospital.setAttribute(
    "href",
    `../hospitalDoctorList.html?hospital_id=${hospital_id}` // Corrected query parameter name
  );
}
