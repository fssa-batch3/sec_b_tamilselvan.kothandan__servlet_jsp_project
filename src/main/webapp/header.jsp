<%@page import="in.fssa.doc4you.model.User"%>
<header class="header" id="header">
<% User user = (User) session.getAttribute("user");
boolean isLogin_in = user == null;

%>


<%
if (isLogin_in == false) {
%>

<a href="index.jso" class="logo"> <img src="./assets/img/image.png" alt="logo"
	id="logo_image">
</a>


<nav class="navbar">
	<a href="index.jsp">Home</a> <a href="Doctors.jsp">Doctors</a> <a
		href="About_page.jsp">About</a> <a href="login.jsp">Login</a> <a
		href="admin_login.jsp">Admin</a> <a href="doctor_login.jsp">Doctor Login</a>
</nav>
<div id="menu-btn" class="fas fa-bars"></div>




<%
} else {
%>





<a href="index.jsp" class="logo"> <img src="assets/img/image.png" alt="logo"
	id="logo_image">
</a>


<nav class="navbar" id="navbar">
	<a href="index.jsp">Home</a> <a href="About_page.jsp">About</a> <a
		href="Doctors.jsp">Doctors</a> <a href="hospital.jsp">Hospital</a>




	<div class="dropdown">
		<button class="dropbtn" id="dropdtn" style='margin-left: 2rem;'>
			<i class='fa-solid fa-circle-user'
				style='font-size: 2rem; color: #0e6453'></i>
		</button>
		<div class="dropdown-content">
			<a href="appointment_page.jsp">View profile</a> <a href="past_appointment.jsp">My
				appointment</a> <a href="#" id="logoutLink">Logout</a>

		</div>
	</div>
</nav>

<div id="menu-btn" class="fas fa-bars"></div>


<%
}
%>
</header>