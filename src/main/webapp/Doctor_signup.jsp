<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DOC 4 YOU</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="./assets/css/style.css">
    </head>

    <body>
    
   <% 
   String errorMessage = (String) request.getAttribute("errorMessage");
   String email = (String) request.getAttribute("email");
   String password = (String) request.getAttribute("password");
%>


<jsp:include page="header.jsp"></jsp:include>

<div class="signin">


    <div class="container">
        <div class="pic">
            <img src="./assets/img/Sign up-bro.png" alt="sign_up image">
        </div>
        <div class="login">
            <form action="doctorlogin" method="POST" id="signIn">
                <h1>Doctor Login</h1>

                <hr>
                <p>Explore the Medical Service!</p>
                <label>Email</label>
                <input type="text" id="userNameEmail" placeholder="Example" name="email" value="<%= (email != null) ? email : "" %>">

                
               
                
								        <label for="password">Password</label>
								        <span style="color: #0e6453"> Note: 1 number, 1
						upper_case/lower_case, 8+ char. </span>
        <div class="password-input">
            <input type="password" placeholder="Enter your password" id="password" name="password" value="<%= (password != null) ? password : "" %>" required>
            <span id="passwordToggle" class="password-toggle" onclick="togglePasswordVisibility()">
                <i id="toggleIcon" class="fa fa-eye"></i>
            </span>
        </div>
        
        
        
        
        
        
        
        <% if (errorMessage != null) { %>
  <div class="notification">
    <div class="error-message">
      <%= errorMessage %>
    </div>
    <span class="close-button" onclick="closeNotification()">&times;</span>
  </div>
<% } %>
       
        
        
        
        
        
        
        
        <input type="submit" value="Login">
        <p>
            <a href="doctor_create">Not a Member</a>
        </p>
    </form>
</div>
    </div>
</div>



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
	const passwordToggle = document.getElementById("passwordToggle");
    const toggleIcon = document.getElementById("toggleIcon");
    const passwordInput = document.getElementById("password");

    passwordToggle.addEventListener("click", () => {
        const type = passwordInput.getAttribute("type");
        if (type === "password") {
            passwordInput.setAttribute("type", "text");
            toggleIcon.classList.remove("fa-eye");
            toggleIcon.classList.add("fa-eye-slash");
        } else {
            passwordInput.setAttribute("type", "password");
            toggleIcon.classList.remove("fa-eye-slash");
            toggleIcon.classList.add("fa-eye");
        }
    });
    
    function closeNotification() {
    	  var notification = document.querySelector('.notification');
    	  if (notification) {
    	    notification.style.display = 'none';
    	  }
    	}

	</script>
</body>
</html>