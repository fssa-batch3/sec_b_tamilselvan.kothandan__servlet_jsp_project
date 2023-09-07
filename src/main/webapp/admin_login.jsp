<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU </title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>

    <header class="header">

        <a href="admin_index.jsp" class="logo">
            <img src="./assets/img/image.png" alt="logo" id="logo_image">
        </a>
        <nav class="navbar" id="navbar">

        </nav>

        <div id="menu-btn" class="fas fa-bars"></div>

    </header>

    <form role="form" onsubmit="signIn(event);" style="margin-top: 20rem;">
        <h1>LOGIN</h1>
        <p>Please fill out this form to login.</p>
        <hr>

        <label for="name">
            <b>Name</b>
        </label>
        <input type="text" placeholder="Enter Your Name" id="fullname" pattern="[a-zA-Z0-9]+" name="name" required>
        <br>

        <label for="pwd">
            <b>Password</b>
        </label>
        <span style="color: #0e6453;"> Note: 1 num, 1 uppercase/lowercase, 8+ char. </span>
        <input type="password" placeholder="Enter Your Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
            id="password" name="psw" required>
            <span id="passwordToggle" class="password-toggle">
                <i id="toggleIcon" class="fa fa-eye"></i>
              </span>
        <br>

        <hr>
        <p>
            By creating an account you agree to our <a href="#">Terms & Privacy</a>.
        </p>

        <button type="submit" class="registerbutton">Register</button>

        <p>
            Not a member? <a href="./admin_register.html">Register</a>
        </p>

    </form>

    <script src="../assets/js/adminLogin.js"></script>

</body>

</html>