<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
    
   
    
      <jsp:include page = "header.jsp"></jsp:include>

<div class="signin">
            <div class="container">
                <div class="pic">
<img src="./assets/img/Sign up-bro.png" alt="sign_up image">
                </div>
                <div class="login">
                   <form action="doctorlogin" method="POST" id = "signIn">
                        <h1>Doctor Login</h1>
                        <hr>
                        <p>Explore the Medical Service!</p>
                        <label>Email</label>
                        <input type="text" id="userNameEmail"   placeholder="Example" name=  "email">

                        <label>Password</label>
                        <span style="color: #0e6453">
                            Note: 1 num, 1 uppercase/lowercase, 8+ char.
                        </span>
                        <input type="password" placeholder="enter your password!" title="Must contain at least one  number and one uppercase and lowercase letter,
                                 and at least 8 or more characters"  id="password" name ="password">
                                 <span id="passwordToggle" class="password-toggle">
                                    <i id="toggleIcon" class="fa fa-eye"></i>
                                  </span>

                        <button type="submit">Submit</button>
                        <p>
                            <a href="doctor_create">Not a Member</a>
                        </p>
</form>
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