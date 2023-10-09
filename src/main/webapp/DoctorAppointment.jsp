<%@page import="in.fssa.doc4you.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DOC 4 YOU</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css">
</head>

<body>

	<%
    Doctor user = (Doctor) request.getAttribute("logged_doctor");
    HttpSession session1 = request.getSession(false); // Do not create a new session if it doesn't exist

    if (session1 == null || session1.getAttribute("logged_doctor") == null) {
        // Session is invalid or not present, display an alert and redirect to login page
%>
	<script>
    alert("Your session has expired. Please log in again.");
    window.location.href = "<%= request.getContextPath() %>/login"; // Replace with your login page URL
</script>
	<%
        return; // Stop processing the rest of the JSP page
    }
%>

	<header class="header" id="header"></header>
	<header class="header">
		<a href="index" class="logo"> <img src="./assets/img/image.png"
			alt="logo" id="logo_image">
		</a>

		<nav class="navbar">
			<a href="doctorLogout">logout</a> <a href="doctor_profile">Profile</a>
		</nav>
		<div id="menu-btn" class="fas fa-bars"></div>

	</header>


	<section class="home-1">
		<h1 class="heading">
			My <span>Appointment</span>
		</h1>
	</section>

	<section>
		<div style="overflow-x: auto;">
			<table border="1">

				<tr>
					<th>Appointment ID</th>
					<th>Patient Name</th>
					<th>Appointment Date</th>
					<th>Appointment Start-time</th>
					<th>Status</th>
					<th>progress</th>
				</tr>
				<c:forEach items="${appointments}" var="appointment">
					<tr>
						<td>${appointment.id}</td>
						<td>${appointment.patientName}</td>
						<td>${appointment.dateOfConsultation}</td>
						<td>${appointment.startTime}</</td>
						<td>${appointment.status}</td>
						<td>

							<form action="AcceptAppointment" method="post">
								<input type="hidden" name="appointmentId"
									value="${appointment.id}">
								<c:choose>
									<c:when test="${appointment.status == Status.Accepted}">
										<input type="submit" value="Approve" disabled>
									</c:when>
									<c:otherwise>
										<input type="submit" value="Approve">
									</c:otherwise>
								</c:choose>
							</form>
							<form action="RejectAppointment" method="post">
								<input type="hidden" name="appointmentId"
									value="${appointment.id}">
								<c:choose>
									<c:when test="${appointment.status == Status.Rejected}">
										<input type="submit" value="Reject" disabled>
									</c:when>
									<c:otherwise>
										<input type="submit" value="Reject">
									</c:otherwise>
								</c:choose>
							</form>
						</td>

					</tr>
				</c:forEach>
			</table>
			<!-- Check if there are no appointments to display -->
			<c:if test="${empty appointments}">
				<p>No past appointments found.</p>
			</c:if>

			<!-- Add a link to navigate back to the main page or any other relevant pages -->
			<p>
				<a href="doctorLogout">Logout</a>
			</p>
		</div>

	</section>
	<script type="text/javascript">
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
	
	</script>

</body>
</html>
