<%@page import="in.fssa.doc4you.model.User"%>
<header class="header" id="header">
	<%
	User user = (User) session.getAttribute("loggedUser");

	boolean isLogin_in = user != null;
	%>
	<%
	if (isLogin_in == false) {
	%>
	<a href="index.jso" class="logo"> <img
		src="<%=request.getContextPath()%>/assets/img/image.png" alt="logo"
		id="logo_image">
	</a>
	<nav class="navbar">
		<a href="index">Home</a> <a href="about">About</a> <a
			href="sign_in.jsp">Registration</a>
	</nav>
	<div id="menu-btn" class="fas fa-bars"></div>

	<%
	} else {
	%>

	<a href="index.jsp" class="logo"> <img
		src="<%=request.getContextPath()%>/assets/img/image.png" " alt="logo"
		id="logo_image">
	</a>

	<nav class="navbar" id="navbar">
		<a href="index">Home</a> <a href="about">About</a> <a href="doctor">Doctors</a>
		<div class="dropdown">
			<button class="dropbtn" id="dropdtn" style='margin-left: 2rem;'>
				<i class='fa-solid fa-circle-user'
					style='font-size: 2rem; color: #0e6453'></i>
			</button>
			<div class="dropdown-content">
				<a href="profile">View profile</a> <a href="appointment">My
					appointment</a> <a href="Logout" id="logoutLink">Logout</a>
			</div>
		</div>
	</nav>

	<div id="menu-btn" class="fas fa-bars"></div>

	<%
	}
	%>
</header>