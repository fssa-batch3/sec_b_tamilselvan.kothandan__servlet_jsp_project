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
	<!-- header section starts  -->

	<jsp:include page="header.jsp"></jsp:include>
	<%
	User user1 = (User) request.getAttribute("userProfile");
	if (user1 != null) {
	%>
	<div class="profile__content">
		<div class="content__section">
			<div class="section__row">
				<div class="section__row__column"></div>
				<div class="section__row__column" id="text">
					<div class="c-input c-input--text has-value">
						<input id="name" name="first_name" type="text"
							value="<%=user.getFirstName()%>"> <label for="name">
							First Name<span>*</span>
						</label>

					</div>
					<div class="c-input c-input--text has-value">
						<input id="name" name="last_name" type="text"
							value="<%=user.getLastName() %>"> <label for="name">
							Last Name<span>*</span>
						</label>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<!-- Edit Profile Button -->
		<button class="btn-1" id="editProfileBtn"
			onclick="editProfile(<%= user.getId() %>)" type="sumbit">Edit
			Profile</button>
		<form action="DeleteAccountServlet" method="post">
			<input type="submit" name="deleteAccount" value="Delete My Account">
		</form>

		<!-- Delete Profile Button -->
		<!-- <button  class = "btn-1"id="deleteProfileBtn" onclick="deleteProfile(<%= user.getId() %>)" type = "sumbit">Delete Profile</button> -->


	</div>

	<section class="footer">
		<jsp:include page="footer.jsp"></jsp:include>

	</section>
	<%
	}
	%>
	<!-- footer section starts -->


	<!-- footer section ends -->
	<script>

function editProfile(userId) {
    window.location.href = '<%= request.getContextPath() %>/edit_profile.jsp?userId=' + userId;
}

function deleteProfile(userId) {
    var confirmDelete = confirm('Are you sure you want to delete your profile?');

    if (confirmDelete) {
        window.location.href = 'delete/?id=' + userId;
    }
}


</script>


</body>

</html>