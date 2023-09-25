<!DOCTYPE html>
   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DOC 4 YOU</title>

        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        >
        <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">
    </head>

    <body>
    
    <c:if test="${not empty successMessage}">
        <div class="success-message">${successMessage}</div>
    </c:if>

    <!-- Display failure message if it exists -->
    <c:if test="${not empty failureMessage}">
        <div class="error-message">${failureMessage}</div>
    </c:if>
    
        <!-- header section starts  -->

        <jsp:include page = "header.jsp"></jsp:include>

        <!-- header section ends -->

        <div class="signin">
            <div class="container">
                <div class="login">
                    <form method = "post" role="form" id="sign-up" action="create" >
                        <h1>REGISTER</h1>
                        <hr >
                        <p>Explore the MEDICAL SERVICE!</p>
                        <label>First name:</label>
                        <input
                            type="text"
                            name = "first_name"
                            id="userName"
                            pattern="[a-zA-Z0-9]+"
                            placeholder="abc@exampl.com"
                        >
                        <label>Last name:</label>
                        <input
                            type="text"
                            name = "last_name"
                            id="userName"
                            pattern="[a-zA-Z0-9]+"
                            placeholder="abc@exampl.com"
                        >
                        <label>Email</label>
                        <input
                            type="text"
                            placeholder="abc@exampl.com"
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                            id="email"
                            name = "email"
                        >
                        <label>Password</label>
                        <span style="color: #0e6453">
                            Note: 1 number, 1 upper_case/lower_case, 8+ char.
                        </span>
                        <input
                        name = "password"
                            type="password"
                            placeholder="enter your password!"
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                            id="password"
                        >
                        <span id="passwordToggle" class="password-toggle">
                                    <i id="toggleIcon" class="fa fa-eye"></i>
                                  </span>

        <input type="submit" value="Register">
                        <p>
                            <a href="../products/login.html">Already a member</a>
                        </p>
                        
                    </form>
                </div>
                <div class="pic">
                    <img src="<%= request.getContextPath() %>/assets/img/Sign up-bro.png" alt="sign_up image">
                </div>
            </div>
        </div>

<script type="text/javascript">

const passwordToggle = document.getElementById("passwordToggle");
const toggleIcon = document.getElementById("toggleIcon");
passwordToggle.addEventListener("click", () => {
  const passwordInput = document.getElementById("password");
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

const PasswordToggle = document.getElementById("PasswordToggle");
const ToggleIcon = document.getElementById("ToggleIcon");
PasswordToggle.addEventListener("click", () => {
  const passwordInput = document.getElementById("confirm_password");
  const type = passwordInput.getAttribute("type");
  if (type === "password") {
    passwordInput.setAttribute("type", "text");
    ToggleIcon.classList.remove("fa-eye");
    ToggleIcon.classList.add("fa-eye-slash");
  } else {
    passwordInput.setAttribute("type", "password");
    ToggleIcon.classList.remove("fa-eye-slash");
    ToggleIcon.classList.add("fa-eye");
  }
});
    </script>
    </body>
</html>
