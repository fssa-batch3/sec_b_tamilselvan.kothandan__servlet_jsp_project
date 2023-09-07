<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU </title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>

<body>

    <!-- header section starts  -->

    <header class="header">

        <a href="./admin.html" class="logo">
            <img src="../assets/img/image.png" alt="logo" id="logo_image">
        </a>

        <nav class="navbar">
            <a href="#" id="logoutBtn">Logout</a>

        </nav>

        <div id="menu-btn" class="fas fa-bars"></div>

    </header>

    <section>

        <form id="doctorForm" style="margin-top:20rem ; ">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <br>
            <br>

            <label for="specialty">Specialty:</label>
            <input type="text" id="specialty" name="specialty" required>
            <br>
            <br>

            <label for="hospital">image:</label>
            <input type="text" id="image" name="hospital" required>
            <br>
            <br>

            <label for="hospital">Descripition:</label>
            <textarea type="text" id="Descripition" aria-valuetext="" name="Instagram" required>
            </textarea>
            <br>
            <br>

            <label for="hospital">experenice:</label>
            <input type="text" id="experenice" name="Instagram" required>
            <br>
            <br>

            <label for="hospital">hospital_ID:</label>
            <input type="text" id="hospital_id" name="Instagram" required>
            <br>
            <br>

            <label for="hospital">location:</label>
            <input type="text" id="location" name="Instagram" required>
            <br>
            <br>

            <label for="hospital">clinic:</label>
            <input type="text" id="clinic" name="Instagram" required>
            <br>
            <br>

            <label for="hospital">Address:</label>
            <input type="text" id="Address" name="Instagram" required>
            <br>
            <br>

            <label for="hospital">Starting-time:</label>
            <input type="text" id="startingTime" name="Instagram" required>
            <br>
            <br>

            <label for="hospital">Ending-time:</label>
            <input type="text" id="endingTime" name="Instagram" required>
            <br>
            <br>

            <label for="hospital">Password:</label>
            <input type="password" id="Password" name="Instagram" required>
            <span id="passwordToggle" class="password-toggle">
                <i id="toggleIcon" class="fa fa-eye"></i>
              </span>
            <br>
            <br>
        
            <label for="weekdays">Weekdays:</label>
            <br>
            <input type="checkbox" id="monday" name="weekdays" value="Monday">
            <label for="monday">Monday</label>
            <br>
            <input type="checkbox" id="tuesday" name="weekdays" value="Tuesday">
            <label for="tuesday">Tuesday</label>
            <br>
            <input type="checkbox" id="wednesday" name="weekdays" value="Wednesday">
            <label for="wednesday">Wednesday</label>
            <br>
            <input type="checkbox" id="thursaday" name="weekdays" value="Thursaday">
            <label for="thursaday">Thursaday</label>
            <br>
            <input type="checkbox" id="friday" name="weekdays" value="Friday">
            <label for="friday">Friday</label>
            <br>
            <br>

            <button type="submit">Save</button>
        </form>

    </section>

    <script src="../assets/js/logout.js"></script>
    <script src="../assets/js/adminDoctorForm.js"></script>
</body>

</html>