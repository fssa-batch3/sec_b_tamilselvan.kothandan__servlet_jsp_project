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
	href="<%=request.getContextPath()%>/assets/css/style.css">

</head>

<body>

	<!-- header section starts  -->

	<jsp:include page="header.jsp"></jsp:include>
	<%
	User user = (User) request.getAttribute("userProfile");
	if (user != null) {
	%>
	<div class="profile__content">
		<div class="content__section">
			<div class="section__row">
				<div class="section__row__column">
									</div>
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
<button class = "btn-1" id="editProfileBtn" onclick="editProfile(<%= user.getId() %>)" type = "sumbit">Edit Profile</button>

<!-- Delete Profile Button -->
<button  class = "btn-1"id="deleteProfileBtn" onclick="deleteProfile(<%= user.getId() %>)" type = "sumbit">Delete Profile</button>

		
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