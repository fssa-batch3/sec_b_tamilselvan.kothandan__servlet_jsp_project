<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title>Doc 4 YOU </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="./assets/css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <header class="header">
        <a href="../Doctor/index.html" class="logo">
            <img src="../assets/img/image.png" alt="logo" id="logo_image">
          </a>
          
          <nav class="navbar">
            <a href="./profile.html">profile</a>
           <a href="./dashboard.html">Appointment List</a>
            <a href="" id="logoutLink">logout</a>
          </nav>
          <div id="menu-btn" class="fas fa-bars"></div>
          
    </header>

    <section class="appointDetails" id="appointDetails">

    </section>
    <section id="appointmentList">
      <h3 id="h3">Appointment List</h3>
       <table border="1">
        <tr>
            <th>Appointment ID</th>
            <th>Patient Name</th>
            <th>Consultation Date</th>
            <th>Status</th>
        </tr>

        <c:forEach items="${pastAppointments}" var="appointment">
            <tr>
                <td>${appointment.id}</td>
                <td>${appointment.patientName}</td>
                <td>${appointment.dateOfConsultation}</td>
                <td>${appointment.status}</td>
            </tr>
        </c:forEach>
    </table>
    </section>

    

</body>

</html>