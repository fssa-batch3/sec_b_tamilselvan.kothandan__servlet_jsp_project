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

        <!-- header section ends -->

        <div class="signin">
            <div class="container">
                <div class="pic">
                    <img src="./assets/img/Sign up-bro.png" alt="sign_up image">
                </div>
                <div class="login">
                    <form role="form" id="signIn">
                        <h1>Login</h1>
                        <hr>
                        <p>Explore the Medical Service!</p>
                        <label>Name</label>
                        <input type="text" id="userName" value="Bakya" pattern="[a-zA-Z0-9]+" placeholder="Example">

                        <label>Password</label>
                        <span style="color: #0e6453">
                            Note: 1 num, 1 uppercase/lowercase, 8+ char.
                        </span>
                        <input type="password" placeholder="enter your password!" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter,
                                 and at least 8 or more characters" value="Bakya@1234" id="password">
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

        <script src="../../assets/js/login and signin .js"></script>
       >
    </body>

</html>