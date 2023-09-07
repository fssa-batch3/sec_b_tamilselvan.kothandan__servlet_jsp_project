<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../../assets/css/style.css">

</head>

<body>

    <!-- header section starts  -->

    <header class="header" id="header">

    </header>

    <!-- header section ends -->

    <!-- booking page section starts  -->
    <section class="home-1">

        <div>
            <h1 class="heading">
                Your appointment is <span>confirmed</span>
            </h1>
            <h2 style="text-align: center; font-size: 3rem;">
                This appointment is <span style="color:#0e6453;">guaranteed</span> by Medical service
</h2>
        </div>
    </section>
    <section class="table">
        <h3 style="font-size: 2rem;">
            Hello <span style="color: #0e6453;font-size: 2.2rem;" id="patient_name"></span>
        </h3>
        <p style="font-size: 1.5rem; margin-top: 0.9rem;">
            Thanks for booking an appointment on medical service.<br> Here
            are the details of our appointment </p>

        <table class="table-2">
            <caption></caption>
            <tr>
                <th class="th"></th>
            </tr>
            <tr>
                <td>Doctor's name</td>
                <td>
                    <span style="color: #0e6453;font-weight: bolder;" id="doctor_name"></span>
                </td>

            </tr>
            <tr>
                <td>Date and Time</td>
                <td>
                    <span style="color: #0e6453;font-weight: bolder;" id="date"></span>
                </td>

            </tr>
            <tr>
                <td>Clinic's Details</td>
                <td>
                    <span style="color: #0e6453;font-weight: bolder;" id="clinic"></span>
                </td>

            </tr>
            <tr>
                <td>Appointment ID</td>
                <td>
                    <span style="color: #0e6453;font-weight: bolder;" id="id"></span>
                </td>
            </tr>

        </table>

        <a href="../../index.html" class="btn" style="margin-left: 15rem; margin-top: 2rem;" id="button">
            Home <span class="fas fa-chevron-right"></span> 
</a>

    </section>

    </section>

    <!-- booking page section ends -->

    <!-- footer section starts -->

    <section class="footer">
        <div class="box-container" id="box-container"></div>

    </section>
    <!-- footer section ends -->

    <script src="../../Components/header.js"></script>
    <script src="../../assets/js/appointmentBookedPage.js"></script>
    <script src="../../Components/footer.js"></script>

</body>

</html>