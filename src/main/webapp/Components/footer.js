const my_Origin = window.location.origin;
const Home = `${my_Origin}/index.html`;
const About = `${my_Origin}/pages/products/About page.html`;
const Doctor = `${my_Origin}/pages/products/Doctors.html`;
const Hospital = `${my_Origin}/pages/products/hospital.html`;
const Images = `${my_Origin}/assets/img/image.png`;

const BeforeLogin = `
<div class="box">
    <h3>Quick links</h3>
    <a href="${Home}">
        <i class="fas fa-chevron-right"></i> Home 
    </a>
    <a href="#services">
        <i class="fas fa-chevron-right"></i> Services 
    </a>
    <a href="${About}">
        <i class="fas fa-chevron-right"></i> About 
    </a>
</div>

<div class="box">
    <h3>contact info</h3>
    <a href="#">
        <i class="fas fa-phone"></i> +91-9445535374 
    </a>
    <a href="#">
        <i class="fas fa-envelope"></i> tamilselvan.kothandan@fssa.freshworks.com 
    </a>
    <a href="#">
        <i class="fas fa-map-marker-alt"></i> Chennai-600081 
    </a>
</div>

<div class="box">
    <h3>follow us</h3>
    <a href="#">
        <i class="fab fa-facebook-f"></i> facebook 
    </a>
    <a href="#">
        <i class="fab fa-twitter"></i> twitter 
    </a>
    <a href="#">
        <i class="fab fa-instagram"></i> instagram 
    </a>
    <a href="#">
        <i class="fab fa-linkedin"></i> linkedin 
    </a>
</div>

<div class="boxs">
    <img src="${Images}" alt="logo" id="img">
    <p id="p">Copyright © 2023, Doc 4 You. All rights reserved.</p>
</div>
`;

const AfterLogin = `
<div class="box">
    <h3>Quick links</h3>
    <a href="${Home}">
        <i class="fas fa-chevron-right"></i> Home 
    </a>
    <a href="${About}">
        <i class="fas fa-chevron-right"></i> About 
    </a>
    <a href="${Doctor}">
        <i class="fas fa-chevron-right"></i> Doctors 
    </a>
    <a href="${Hospital}">
        <i class="fas fa-chevron-right"></i> Hospital 
    </a>
</div>

<div class="box">
    <h3>contact info</h3>
    <a href="#">
        <i class="fas fa-phone"></i> +91-9445535374 
    </a>
    <a href="#">
        <i class="fas fa-envelope"></i> tamilselvan.kothandan@fssa.freshworks.com 
    </a>
    <a href="#">
        <i class="fas fa-map-marker-alt"></i> Chennai-600081 
    </a>
</div>

<div class="box">
    <h3>follow us</h3>
    <a href="#">
        <i class="fab fa-facebook-f"></i> facebook 
    </a>
    <a href="#">
        <i class="fab fa-twitter"></i> twitter 
    </a>
    <a href="#">
        <i class="fab fa-instagram"></i> instagram 
    </a>
    <a href="#">
        <i class="fab fa-linkedin"></i> linkedin 
    </a>
</div>

<div class="boxs">
    <img src="${Images}" alt="logo" id="img">
    <p id="p">Copyright © 2023, Doc 4 You. All rights reserved.</p>
</div>
`;

function home_footer() {
  const name = JSON.parse(localStorage.getItem("name_id"));
  const logFooter = document.getElementById("box-container");
  if (!name) {
    logFooter.innerHTML = BeforeLogin;
  } else {
    logFooter.innerHTML = AfterLogin;
  }
}

document.addEventListener("DOMContentLoaded", () => {
  home_footer();
});
