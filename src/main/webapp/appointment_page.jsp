<!DOCTYPE html>
<%@page import="in.fssa.doc4you.model.User"%>
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

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">

</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>

<%System.out.println("doctor id : "+request.getAttribute("doctor id")); %>


	<section class="book" id="book">

		<h1 class="heading">
			<span>book</span> now
		</h1>

		<div class="row">

			<div class="image">
				<img
					src="<%=request.getContextPath() %>/assets/img/Medical prescription.gif"
					alt="">
			</div>
			<%User user = (User)request.getAttribute("loggedUser"); %>
			<form action = "create" method = "POST">
				<h3>Book Appointment</h3>
				<input type="text" placeholder="First_name" class="box"
					id="first_name" value="<%= user.getFirstName()%>"> 
					<input type="text" placeholder="last_name" class="box" id="last_name" value="<%=user.getLastName()%>"> 
					<input type="text"
					placeholder="Reason for consulation" class="box" name = "health issues">
				<input type="date" placeholder="date of consulation" class="box"
					id="number" name = "date of consultation"> 
					<input type="time" placeholder="Start_time"
					class="box" id="age" name = "start time"> 
					<input type="time"
					placeholder="End_time" class="box" name = "end time">
					  <input type ="hidden" name = "doctor_id" value = "<%=request.getParameter("id")%>">
				<button class="btn" id="book_now" type="submit">Book Now</button>
				

			</form>

		</div>

	</section>

	<section class="footer">
		<jsp:include page="footer.jsp"></jsp:include>

	</section>
	<script src="./../../Components/header.js"></script>
	<script src="../../assets/js/appointment.js"></script>
	<script src="../../Components/footer.js"></script>

</body>

</html>