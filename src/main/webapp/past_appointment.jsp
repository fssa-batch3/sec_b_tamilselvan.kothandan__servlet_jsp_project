<%@page import="in.fssa.doc4you.model.User"%>
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
<link rel="stylesheet" href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css">
</head>

<body>


	<%
    User user = (User) request.getAttribute("loggedUser");
    HttpSession session1 = request.getSession(false); // Do not create a new session if it doesn't exist

    if (session1 == null || session1.getAttribute("loggedUser") == null) {
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

	<jsp:include page="header.jsp"></jsp:include>


	<section class="home-1">
		<h1 class="heading">
			My <span>Appointment</span>
		</h1>
	</section>

	<section>
		<div style="overflow-x: auto;">
			<table border="1" id="patient-appoointment-table">
			<thead>
				<tr>
					<th>Appointment ID</th>
					<th>Patient Name</th>
					<th>Doctor Name</th>
					<th>Date</th>
					<th>Time</th>
					<th>Status</th>
					<th>Cancel</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${appointments}" var="appointment">
					<tr>
						<td>${appointment.id}</td>
						<td>${appointment.patientName}</td>
						<td>${appointment.doctorName}</td>
						<td>${appointment.dateOfConsultation}</td>
						<td>${appointment.startTime}</td>
						<td>${appointment.status}</td>
						<td>

							<form action="cancelAppointment" method="post">
								<input type="hidden" name="appointmentId"
									value="${appointment.id}"> <input type="submit"
									value="Cancel">
							</form>

						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>

			<!-- Check if there are no appointments to display -->
			<c:if test="${empty appointments}">
				<p>No past appointments found.</p>
			</c:if>

			<!-- Add a link to navigate back to the main page or any other relevant pages -->
			<p>
				<a href="index">Back to Main Page</a>
			</p>
		</div>
	</section>

	<section class="footer">
		<jsp:include page="footer.jsp"></jsp:include>

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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
$("#patient-appoointment-table").DataTable();
</script>
</body>

</html>
