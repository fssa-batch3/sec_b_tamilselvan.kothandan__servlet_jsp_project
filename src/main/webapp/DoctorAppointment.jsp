<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DOC 4 YOU</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">
</head>

<body>

    <jsp:include page="header.jsp"></jsp:include>


    <section class="home-1">
        <h1 class="heading">
            My <span>Appointment</span>
        </h1>
    </section>

    <section>
        <div style="overflow-x: auto;">
            <table border="1">

        <tr>
            <th>Appointment ID</th>
            <th>Patient Name</th>
            <th>Appointment Date</th>
            <th>Appointment Start-time</th>
            <th>Status</th>
            <th>progress</th>
        </tr>
        <c:forEach items="${appointments}" var="appointment">
            <tr>
                <td>${appointment.id}</td>
                <td>${appointment.patientName}</td>
                <td>${appointment.dateOfConsultation}</td>
                <td>${appointment.startTime}</</td>
                <td>${appointment.status}</td>
                <td>
      
                <form action="AcceptAppointment" method="post">
                    <input type="hidden" name="appointmentId" value="${appointment.id}">
                    <c:choose>
                        <c:when test="${appointment.status == Status.Accepted}">
                            <input type="submit" value="Approve" disabled>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value = "${appointment.status}">
                        </c:otherwise>
                    </c:choose>
                </form>
                <form action="RejectAppointment" method="post">
                    <input type="hidden" name="appointmentId" value="${appointment.id}">
                    <c:choose>
                        <c:when test="${appointment.status == Status.Rejected}">
                            <input type="submit" value="Reject" disabled>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="${appointment.status}">
                        </c:otherwise>
                    </c:choose>
                </form>
            </td>
      
            </tr>
        </c:forEach>
    </table>
    <!-- Check if there are no appointments to display -->
            <c:if test="${empty appointments}">
                <p>No past appointments found.</p>
            </c:if>

            <!-- Add a link to navigate back to the main page or any other relevant pages -->
            <p>
                 <a href="doctorLogout">Logout</a>
            </p>
    </div>
   
    </section>
    
    
</body>
</html>