<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>medical service</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="./assets/css/style.css">
    </head>

    <body>
        <!-- header section starts  -->

        <header class="header" id="header"></header>
        <header class="header">
          <a href="../Doctor/index.html" class="logo">
            <img src="./assets/img/image.png" alt="logo" id="logo_image">
          </a>
      
          <nav class="navbar">
            <a href="index.jsp">Home</a>
            
          </nav>
          <div id="menu-btn" class="fas fa-bars"></div>
      
        </header>

        <!-- header section ends -->

        <div class="signin">
            <div class="container">
                <div class="pic">
                    <img src="./assets/img/Online Doctor-bro.png" alt="sign_up image">
                </div>
                <div class="login">
                    <form role="form" id="login">
                        <h1> Doctor Login</h1>
                        <hr>
                        <p>Explore the Medical Service!</p>
                        <label>Id</label>
                        <input type="text" id="id" value="1681717361383" pattern="[a-zA-Z0-9]+">

                        <label>Password</label>
                        <span style="color: #0e6453">
                            Note: 1 num, 1 uppercase/lowercase, 8+ char.
                        </span>
                        <input type="password" placeholder="enter your password!" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter,
                                 and at least 8 or more characters" value="Kalai@1234" id="Password">
                                 <span id="passwordToggle" class="password-toggle">
                                    <i id="toggleIcon" class="fa fa-eye"></i>
                                  </span>

                        <button type="submit">Submit</button>
                        <closeform></closeform>
                    </form>
                </div>
            </div>
        </div>
<script src="../assets/js/doctorLogin.js"></script>
    </body>
</html>