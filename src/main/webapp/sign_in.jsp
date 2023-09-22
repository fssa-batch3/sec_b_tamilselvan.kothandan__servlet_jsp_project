<!DOCTYPE html>
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
        <!-- header section starts  -->

        <<jsp:include page = "header.jsp"></jsp:include>

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
                            Note: 1 num, 1 uppercase/lowercase, 8+ char.
                        </span>
                        <input
                        name = "password"
                            type="password"
                            placeholder="enter your password!"
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                            id="password"
                        >
                        
        <input type="submit" value="Register">
                        <p>
                            <a href="../products/login.html">Already a member</a>
                        </p>
                        <closeform></closeform>
                    </form>
                </div>
                <div class="pic">
                    <img src="<%= request.getContextPath() %>/assets/img/Sign up-bro.png" alt="sign_up image">
                </div>
            </div>
        </div>

<script>
        // Show/hide doctor fields based on the checkbox
        document.getElementById("isDoctor").addEventListener("change", function() {
            var doctorFields = document.getElementById("doctorFields");
            doctorFields.style.display = this.checked ? "block" : "none";
        });
    </script>
    </body>
</html>
