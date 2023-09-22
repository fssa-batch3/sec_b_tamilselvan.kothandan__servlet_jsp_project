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
		<a href="../Doctor/index.html" class="logo"> <img
			src="./assets/img/image.png" alt="logo" id="logo_image">
		</a>

		<nav class="navbar">
			<a href="index.jsp">Home</a>

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
							type="password" required=true name="password"> <br>
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
                            <a href="<%=request.getContextPath() %>/Doctor_signup.jsp">Already a member</a>
                            
                        </p>
				</form>
			</div>

		</div>
	</div>

	<script>
        // Show/hide doctor fields based on the checkbox
        document.getElementById("isDoctor").addEventListener("change", function() {
            var doctorFields = document.getElementById("doctorFields");
            doctorFields.style.display = this.checked ? "block" : "none";
        });
    </script>

</body>
</html>