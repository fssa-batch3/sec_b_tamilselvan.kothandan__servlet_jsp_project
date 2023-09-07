<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DOC 4 YOU </title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" href="../../assets/css/style.css">

</head>

<body>

  <!-- header section starts  -->

  <header class="header">

    <a href="./admin.html" class="logo">
      <img src="../assets/img/image.png" alt="logo" id="logo_image">
    </a>
    <nav class="navbar">

      <a href="../index.html" id="logoutBtn">Logout</a>

    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

  </header>

  <section>

    <form id="hospitalForm" style="margin-top:20rem ; ">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>
      <br>
      <br>

      <label for="specialty">Address:</label>
      <input type="text" id="Address" name="Address" required>
      <br>
      <br>

      <label for="hospital">image:</label>
      <input type="text" id="img_src" name="hospital" required>
      <br>
      <br>

      <label for="hospital">Details:</label>
      <textarea type="text" id="details" name="Instagram" aria-valuetext="" required>
                </textarea>
      <br>
      <br>

      <label for="hospital">hospital_ID:</label>
      <input type="text" id="hospital_id" value="6" name="linkedin">
      <br>
      <br>

      <label for="hospital">linkedin:</label>
      <input type="text" id="linkedin" value="" name="linkedin">
      <br>
      <br>

      <label for="hospital">Facebook:</label>
      <input type="text" id="Facebook" value="" name="Facebook">
      <br>
      <br>

      <label for="hospital">Twitter:</label>
      <input type="text" id="Twitter" value="" name="Twitter">
      <br>
      <br>

      <label for="hospital">Instagram:</label>
      <input type="text" id="Instagram" name="Instagram">
      <br>
      <br>

      <button type="submit">Save</button>
    </form>

  </section>
  <script src="../assets/js/logout.js"></script>
  <script src="../assets/js/adminHospitalForm.js"></script>

</body>

</html>