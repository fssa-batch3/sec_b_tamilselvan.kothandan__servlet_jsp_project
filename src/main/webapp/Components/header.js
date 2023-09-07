const myOrigin = window.location.origin;
const home = `${myOrigin}/index.html`;
const login = `${myOrigin}/pages/products/login.html`;
const about = `${myOrigin}/pages/products/About page.html`;
const Admin = `${myOrigin}/admin/admin_login.html`;
const doctor = `${myOrigin}/pages/products/Doctors.html`;
const hospital = `${myOrigin}/pages/products/hospital.html`;
const profile = `${myOrigin}/pages/products/profile.html`;
const appointment1 = `${myOrigin}/pages/products/past appointment.html`;
const doctor_login = `${myOrigin}/Doctor/login.html`;
const image = `${myOrigin}/assets/img/image.png`;

const beforeLogin = `
<a href="${home}" class="logo">
  <img src="${image}" alt="logo" id="logo_image">
</a>


<nav class="navbar">
  <a href="${home}">Home</a>
  <a href="${home}">services</a>
  <a href="${about}">About</a>
  <a href="${login}">Login</a>
  <a href="${Admin}">Admin</a>
  <a href="${doctor_login}">Doctor login</a>
</nav>
<div id="menu-btn" class="fas fa-bars"></div>

`;

const afterLogin = `
<a href="${home}" class="logo">
  <img src="${image}" alt="logo" id="logo_image">
</a>


        <nav class="navbar" id="navbar">
            <a href="${home}">Home</a>
            <a href="${about}">About</a>
            <a href="${doctor}">Doctors</a>
            <a href="${hospital}">Hospital</a>
            
            


            <div class="dropdown">
                <button class="dropbtn" id="dropdtn" style='margin-left:2rem;'><i class='fa-solid fa-circle-user' style='font-size:2rem;color:#0e6453 ' ></i></button>
                <div class="dropdown-content">
                    <a href="${profile}">View profile</a>
                    <a href="${appointment1}">My appointment</a>
                    <a href="#" id="logoutLink">Logout</a>
                    
                </div>
            </div>
        </nav>

        <div id="menu-btn" class="fas fa-bars"></div>     
`;

function home_header() {
  const user_name = JSON.parse(localStorage.getItem("name_id"));
  const logHeader = document.getElementById("header");
  if (!user_name) {
  //  logHeader.innerHTML = beforeLogin;
  } else {
   // logHeader.innerHTML = afterLogin;

    const menu = document.querySelector("#menu-btn");
    const navbar = document.querySelector(".navbar");

    menu.addEventListener("click", () => {
      menu.classList.toggle("fa-times");
      navbar.classList.toggle("active");
    });

    window.onscroll = () => {
      menu.classList.remove("fa-times");
      navbar.classList.remove("active");
    };
  }
}

function logout_link() {
  const confirmation = window.confirm("Are you sure you want to Logout?");
  if (confirmation) {
    localStorage.removeItem("name_id");
    window.location.href = `${home}`;
  }
}

document.addEventListener("DOMContentLoaded", () => {
  home_header();

  const logoutButton = document.getElementById("logoutLink");
  if (logoutButton) {
    logoutButton.addEventListener("click", logout_link);
  }
});
