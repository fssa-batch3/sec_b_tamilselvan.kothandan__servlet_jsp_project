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

    <section class="book" id="book">

        <h1 class="heading">
            <span>book</span> now
        </h1>

        <div class="row">

            <div class="image">
                <img src="../../assets/img/Medical prescription.gif" alt="">
            </div>

            <form role="form" onsubmit="appoinment(event)">
                <h3>Book Appointment</h3>
                <input type="text" placeholder="Patient name" class="box" id="name">
                <input type="tel" placeholder="Phone number" class="box" id="number">
                <input type="tel" placeholder="Age" class="box" id="age">
                <input type="email" placeholder="Patient email" class="box" id="email">
                <input type="text" placeholder="Patient gender" class="box" id="gender_">
                <input type="datetime-local" class="box" id="date_time">
                <button class="btn" id="book_now" type="submit">Book Now</button>
                </a>

            </form>

        </div>

    </section>

    <section class="footer">
        <div class="box-container" id="box-container"></div>

    </section>
    <script src="./../../Components/header.js"></script>
    <script src="../../assets/js/appointment.js"></script>
    <script src="../../Components/footer.js"></script>

</body>

</html>