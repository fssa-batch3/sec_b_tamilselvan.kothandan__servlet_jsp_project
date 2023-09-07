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
        <link rel="stylesheet" href="../../assets/css/style.css">
    </head>

    <body>
        <!-- header section starts  -->

        <header class="header" id="header"></header>

        <!-- header section ends -->

        <div class="signin">
            <div class="container">
                <div class="login">
                    <form role="form" id="sign-up" onsubmit="signUp(event);">
                        <h1>REGISTER</h1>
                        <hr >
                        <p>Explore the MEDICAL SERVICE!</p>
                        <label>Name</label>
                        <input
                            type="text"
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
                        >
                        <label>Password</label>
                        <span style="color: #0e6453">
                            Note: 1 num, 1 uppercase/lowercase, 8+ char.
                        </span>
                        <input
                            type="password"
                            placeholder="enter your password!"
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                            id="password"
                        >
                        <span id="passwordToggle" class="password-toggle">
                            <i id="toggleIcon" class="fa fa-eye"></i>
                          </span>
                        <label> Confirm Password</label>
                        <input
                            type="password"
                            placeholder="reenter your password!"
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                            required
                            id="confirm_password"
                        >
                        <span id="PasswordToggle" class="password-toggle">
                            <i id="ToggleIcon" class="fa fa-eye"></i>
                          </span>

                        <button>Submit</button>
                        <p>
                            <a href="../products/login.html">Already a member</a>
                        </p>
                        <closeform></closeform>
                    </form>
                </div>
                <div class="pic">
                    <img src="../../assets/img/Sign up-bro.png" alt="sign_up image">
                </div>
            </div>
        </div>

        <script src="../../assets/js/login and signin .js"></script>
        <script src="../../Components/header.js"></script>
    </body>
</html>
