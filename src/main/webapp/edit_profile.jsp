<!DOCTYPE html>
<%@page import="in.fssa.doc4you.service.UserService"%>
<%@page import="in.fssa.doc4you.exception.ValidationException"%>
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
 
<%
User user = (User) request.getSession().getAttribute("loggedUser");
User user1 = null;
try {
	user1 = UserService.getByUserEmail(user.getEmail());
} catch (ValidationException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

request.setAttribute("userProfile", user1);
%>

   
	<form action="profile/edit?id=<%=user.getId() %>" method="post" id="edit_profile" style="margin-top: 200px;">
	<h1>Edit profile</h1>
	<label>First name</label>
        <input type="text" name="firstName" value="<%=user1.getFirstName()%>">
        <label>last name</label>
        <input type="text" name="lastName" value="<%= user1.getLastName()%>">
        <label>password</label>
 <input type="text" name="password" value="<%= user1.getPassword()%>">
        <button type="submit">Save Changes</button>
    </form>
    
    <section class="footer">
		<jsp:include page="footer.jsp"></jsp:include>

	</section>
    <!-- footer section ends -->

</body>

</html>