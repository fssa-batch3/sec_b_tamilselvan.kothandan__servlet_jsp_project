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


<script>
        // Check if the errorMessage attribute is set
        var errorMessage = '<%= request.getAttribute("errorMessage") %>';
        if (errorMessage && errorMessage.length > 0) {
            // Display an alert with the error message
            alert(errorMessage);
        }
    </script>
        <!-- header section ends -->

        <div class="signin">
            <div class="container">
                <div class="pic">
                    <img src="./assets/img/Sign up-bro.png" alt="sign_up image">
                </div>
                <div class="login">
                    <form method="post" role="form" id="signIn" action = "LoginServlet">
                        <h1>Login</h1>
                        <hr>
                        <p>Explore the Medical Service!</p>
                        <label>Email</label>
                        <input type="text" id="userNameEmail"   placeholder="Example" name=  "email">

                        <label>Password</label>
                        <span style="color: #0e6453">
                            Note: 1 num, 1 uppercase/lowercase, 8+ char.
                        </span>
                        <input type="password" placeholder="enter your password!" title="Must contain at least one  number and one uppercase and lowercase letter,
                                 and at least 8 or more characters"  id="password" name =password>
                                 <span id="passwordToggle" class="password-toggle">
                                    <i id="toggleIcon" class="fa fa-eye"></i>
                                  </span>

                        <button type="submit">Submit</button>
                        <p>
                            <a href="./sign in.html">Not a Member</a>
                        </p>
                        <closeform></closeform>
                    </form>
                </div>
            </div>
        </div>

       >
    </body>

</html>