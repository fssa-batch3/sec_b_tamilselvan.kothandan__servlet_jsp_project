<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Doctor Login</h2>
    <form action="doctorlogin" method="POST">
		<div style="text-align: center">
			<div>
				<img src="https://iili.io/HgM93tj.png" alt="logo of gws"
					style="width: 50%">
			</div>
			<div>
				<h1 style="color: #1b3c74">LOGIN</h1>
			</div>
		</div>
		<br>
		<div>
			<div>
				<label>Email address</label>
			</div>
			<div>
				<input type="email" required="true" name="email"
					style="width: 100%; height: 30px" />
			</div>
		</div>
		<br>
		<div>
			<div>
				<label>Password</label>
			</div>
			<div class="password_container">
				<input type="password" required="true" name="password"
					style="width: 100%; height: 30px"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" /> <!-- <a
					id="toggle-password"> <span class="eye_icon hide" id="open_eye">
						<i class="fa fa-eye" style="color: #08ad37; font-size: 20px"></i>
				</span> <span class="eye_icon" id="close_eye"> <i
						class="fa fa-eye-slash" style="color: #1b3c74; font-size: 20px"></i>
				</span>
				</a> -->
			</div>
		</div>
		<br>
		<div style="text-align: center;">
			<div>
				<button type="submit">Login</button>
			</div>
			<br>
			<%-- <div>
				<a href="<%=request.getContextPath()%>/homepage/new"> new
					member? </a>
			</div> --%>
		</div>
	</form>

</body>
</html>