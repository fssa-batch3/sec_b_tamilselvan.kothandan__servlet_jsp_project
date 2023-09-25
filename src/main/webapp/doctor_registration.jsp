<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>medical service</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<!-- header section starts  -->


	<header class="header" id="header"></header>
	<header class="header">
		<a href="index" class="logo"> <img
			src="./assets/img/image.png" alt="logo" id="logo_image">
		</a>

		<nav class="navbar">
			<a href="index">Home</a>

		</nav>
		<div id="menu-btn" class="fas fa-bars"></div>

	</header>

	<!-- header section ends -->

	<div class="signin">
		<div class="container">
			<div class="pic">
				<img src="./assets/img/Online Doctor-bro.png" alt="sign_up image">
			</div>
			<div class="login">
				<form action="doctor_create" method="POST">
					<h2>Add new Doctor</h2>
					<div>
						<label for="first name">First name</label> <br> <input
							type="text" required=true name="first name"> <br>
					</div>
					<br>
					<div></div>
					<div>
						<label for="last name">Last name</label> <br> <input
							type="text" required=true name="last name"> <br>
					</div>
					<br>
										<div>
						<label for="email"> Email</label> <br> <input type="email"
							required=true name="email"> <br>
					</div>
					<div></div>
					<br>
					<div>
						<label for="password"> Password</label> <br> <input
							type="password" required name="password"> 
							<span id="passwordToggle" class="password-toggle">
                                    <i id="toggleIcon" class="fa fa-eye"></i>
                                  </span>

							
							<br>
							
					</div>
					<div></div>
					<br>
					<div>
						<label for="qualifications">Qualifications</label> <br> <input
							type="text" required="true" name="qualifications"> <br>
					</div>
					<div></div>
					<br>
					<div>
						<label for="experience">Experience</label> <br> <input
							type="number" required="true" name="experience"> <br>
					</div>
					<div></div>
					<br>
					<div>
						<label for="department">Department</label> <br> <input
							type="text" required=true name="department"> <br>
					</div>
					<div></div>
					<br>
					<div>
						<label for="doctor image">Doctor image</label> <br> <input
							type="url" required=true name="doctor image"> <br>
					</div>
					<div></div>
					<br>
					<button type="submit">Submit</button>
					<p>
                            <a href="<%=request.getContextPath() %>/doctorlogin">Already a member</a>
                            
                        </p>
				</form>
			</div>

		</div>
	</div>

	<script type="text/javascript">
const passwordToggle = document.getElementById("passwordToggle");
const toggleIcon = document.getElementById("toggleIcon");
passwordToggle.addEventListener("click", () => {
  const passwordInput = document.getElementById("password");
  const type = passwordInput.getAttribute("type");
  if (type === "password") {
    passwordInput.setAttribute("type", "text");
    toggleIcon.classList.remove("fa-eye");
    toggleIcon.classList.add("fa-eye-slash");
  } else {
    passwordInput.setAttribute("type", "password");
    toggleIcon.classList.remove("fa-eye-slash");
    toggleIcon.classList.add("fa-eye");
  }
});

const PasswordToggle = document.getElementById("PasswordToggle");
const ToggleIcon = document.getElementById("ToggleIcon");
PasswordToggle.addEventListener("click", () => {
  const passwordInput = document.getElementById("confirm_password");
  const type = passwordInput.getAttribute("type");
  if (type === "password") {
    passwordInput.setAttribute("type", "text");
    ToggleIcon.classList.remove("fa-eye");
    ToggleIcon.classList.add("fa-eye-slash");
  } else {
    passwordInput.setAttribute("type", "password");
    ToggleIcon.classList.remove("fa-eye-slash");
    ToggleIcon.classList.add("fa-eye");
  }
});
</script>


</body>
</html>