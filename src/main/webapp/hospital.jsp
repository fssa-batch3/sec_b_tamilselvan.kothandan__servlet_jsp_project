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

    <section class="doctors">

        <h1 class="heading">
            our <span>hospitals</span>
        </h1>

        <section class="filter-1">
            <div class="wrapper">
                <div id="search-container">
                    <input type="search" id="search-item" onkeyup="search()" placeholder="search for Hospital">
                    <button id="search">Search</button>
                </div>
            </div>
        </section>

        <div class="box-container" id="hospitals-list">

        </div>

    </section>
    <section class="footer">
        <div class="box-container" id="box-container"></div>

    </section>

    <script src="../../Components/header.js"></script>
    <script src="../../assets/js/hospital.js"></script>
    <script src="../../Components/footer.js"></script>

</body>

</html>