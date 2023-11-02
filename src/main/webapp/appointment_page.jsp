<!DOCTYPE html>
<%@page import="in.fssa.doc4you.model.User"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>

    <%
    Integer id = (Integer) session.getAttribute("doctor_id");

    User user = (User) session.getAttribute("loggedUser");

    if (user == null) {
    %>
    <script>
        alert("Your session has expired. Please log in again.");
        window.location.href = "<%= request.getContextPath() %>/login"; // Replace with your login page URL
    </script>
    <%
        return; // Stop processing the rest of the JSP page
    }
    %>

    <section class="book" id="book">
        <h1 class="heading">
            <span>book</span> now
        </h1>

        <div class="row">
            <div class="image">
                <img src="<%=request.getContextPath() %>/assets/img/Medical prescription.gif" alt="">
            </div>
            <form action="create" method="POST">
                <h3>Book Appointment</h3>
                <input type="text" placeholder="First_name" class="box" id="first_name" value="<%= user.getFirstName()%>">
                <input type="text" placeholder="last_name" class="box" id="last_name" value="<%= user.getLastName()%>">
                <input type="text" placeholder="Reason for consultation" class="box" name="health_issues">
                <input type="date" placeholder="date_of_consultation" class="box" id="number" name="date_of_consultation">
                <input type="time" placeholder="Start_time" class="box" id="age" name="start_time"> <!-- corrected class attribute -->
                <input type="time" placeholder="End_time" class="box" name="end_time"> <!-- corrected class attribute -->
                <input type="hidden" name="doctor_id" value="<%=id%>">

                <c:if test="${not empty requestScope.errorMessage}">
                    <div class="notification error">
                        <div class="error-message">
                            ${requestScope.errorMessage}
                            <c:if test="${not empty requestScope.notification}">
                                <script>
                                    alert("${requestScope.notification}");
                                </script>
                            </c:if>
                        </div>
                        <span class="close-button" onclick="closeNotification(this)">&times;</span>
                    </div>
                </c:if>
                <button class="btn" id="book_now" type="submit">Book Now</button>
            </form>
        </div>
    </section>

    <section class="footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </section>

    <script type="text/javascript">
        const menu = document.querySelector("#menu-btn");
        const navbar = document.querySelector(".navbar");

        menu.addEventListener("click", () => {
            menu.classList.toggle("fa-times");
            navbar.classList.toggle("active");
        });

        window.onscroll = () => {
            menu.classList.remove("fa-times");
            navbar.classList.remove("active");
        };

        function closeNotification(button) {
            var notification = button.parentElement;
            notification.style.display = "none";
        }
    </script>
</body>
</html>
