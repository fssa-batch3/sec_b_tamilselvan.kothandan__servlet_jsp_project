<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU </title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>

<body>

    <!-- header section starts  -->

    <header class="header">

        <a href="index.jsp" class="logo">
            <img src="./assets/img/image.png" alt="logo" id="logo_image">
        </a>

        <nav class="navbar">
            <a href="#" id="logoutBtn">Logout</a>

        </nav>

        <div id="menu-btn" class="fas fa-bars"></div>

    </header>

    <section>

        <form id="doctorForm" style="margin-top:20rem ; " action = "DoctorFormServlet">
            <label for="First name">First name:</label>
            <input type="text" id="First name" name="first_name" required>
            <br>
            <br>

            <label for="Last name">Lirst name:</label>
            <input type="text" id="Lirst name" name="last_name" required>
            <br>
            <br>

            <label for="department">department:</label>
            <input type="text" id="department" name="department" required>
            <br>
            <br>

            <label for="hospital">doctor_image:</label>
            <input type="text" id="image" name="doctor_image" required>
            <br>
            <br>

           

            <label for="hospital">experience:</label>
            <input type="text" id="experience" name="experience" required>
            <br>
            <br>


            <label for="qualifications">qualifications:</label>
            <input type="text" id="qualifications" name="qualifications" required>
            <br>
            <br>
            
                        <label for="email">email:</label>
            <input type="text" id="email" name="email" required>
            <br>
            <br>
            
                        <label for="Password">Password:</label>
            <input type="text" id="Password" name="Password" required>
            <br>
            <br>

            
            <button type="submit">Save</button>
        </form>

    </section>

    <script src="../assets/js/adminDoctorForm.js"></script>
</body>

</html>