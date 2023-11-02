<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    <div class="signin">
    <div class="container">
        <div class="login">
            <form method="post" role="form" id="sign-up" action="create">
                <h1>PATIENT REGISTER</h1>
                <hr>
                <p>Explore the MEDICAL SERVICE!</p>

                <label for="first_name">First name:</label>
                <input type="text" id="first_name" name="first_name" pattern="[a-zA-Z0-9]+" placeholder="First Name" required value="${empty first_name ? '' : first_name}">

                <label for="last_name">Last name:</label>
                <input type="text" id="last_name" name="last_name" pattern="[a-zA-Z0-9]+" placeholder="Last Name" required value="${empty last_name ? '' : last_name}">

                <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="abc@example.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$" required value="${empty email ? '' : email}">

                <label for="password">Password</label>
                <span style="color: #0e6453">Note: 1 number, 1 upper_case/lower_case, 8+ characters.</span>
                <input type="password" id="password" name="password" placeholder="Enter your password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required value="${empty password ? '' : password}">
                    <span id="passwordToggle" class="password-toggle">
                        <i id="toggleIcon" class="fa fa-eye"></i>
                    </span>
                <c:if test="${not empty errorMessage}">
                    <div class="notification error">
                        <div class="error-message">${errorMessage}</div>
                        <span class="close-button" onclick="closeNotification(this)">&times;</span>
                    </div>
                </c:if>

                <input type="submit" value="Register">
                <p>
                    <a href="login" style="text-decoration: underline; text-decoration-color: #0e6453; font-size: 1rem;">Already a member as Patient</a>
                </p>
                <p style="margin-top: -1rem; color: #0e6453;">(or)</p>
                <p style="margin-top: -2rem;">
                    <a href="doctorlogin" style="text-decoration: underline; text-decoration-color: #0e6453; font-size: 1rem;">Already a member as Doctor</a>
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
                toggleIcon.classList add("fa-eye-slash");
            } else {
                passwordInput.setAttribute("type", "password");
                toggleIcon.classList.remove("fa-eye-slash");
                toggleIcon.classList.add("fa-eye");
            }
        });
    </script>

    <script>
        function closeNotification(button) {
            var notification = button.parentElement;
            notification.style.display = "none";
        }
    </script>

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
