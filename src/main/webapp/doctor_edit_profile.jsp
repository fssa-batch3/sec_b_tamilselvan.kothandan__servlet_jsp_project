<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title>Doctor </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../assets/css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <header class="header">
        <a href="./profile.html" class="logo">
            <img src="../assets/img/image.png" alt="logo" id="logo_image">
        </a>

        <nav class="navbar">
            <a href="./profile.html">profile</a>
            <a href="./dashboard.html">Appointment List</a>
            <a href="" id="logoutLink">logout</a>
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>

    </header>
    <div class="profile-container">
        <div class="profile">
            <h2>Profile</h2>
            <div class="profile-info">
                <div class="profile-field">
                    <label for="specialty">Name:</label>
                    <input id="Name" type="text">
                </div>
                <div class="profile-field">
                    <label for="specialty">Specialty:</label>
                    <input id="specialty" type="text">
                </div>
                <div class="profile-field">
                    <label for="description">Description:</label>
                    <input id="description" type="text">
                </div>
                <div class="profile-field">
                    <label for="experience">Experience:</label>
                    <input id="experience" type="text">
                </div>
                <div class="profile-field">
                    <label for="location">Location:</label>
                    <input id="location" type="text">
                </div>
                <div class="profile-field">
                    <label for="clinic">Clinic:</label>
                    <input id="clinic" type="text">
                </div>
                <div class="profile-field">
                    <label for="address">Address:</label>
                    <input id="address" type="text">
                  </div>
                <div class="profile-field">
                    <label for="timing">Starting-time:</label>
                    <input id="startingTime" type="text">
                  </div>
                  <div class="profile-field">
                    <label for="timing">Ending-Time:</label>
                    <input id="endingTime" type="text">
                  </div>
                </div>
            </div>
            <button class="btn-2" id="btn-save">save Profile</button>

        </div>
    </div>

    <script src="../Components/doctor_sidebar.js"></script>
    <script src="../assets/js/doctorEditProfile.js"></script>

</body>

</html>