<!DOCTYPE html>
<%@page import="java.util.HashSet"%>
<%@page import="in.fssa.doc4you.exception.ServiceException"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.doc4you.service.DoctorService"%>
<%@page import="in.fssa.doc4you.dto.DoctorDTO"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">

</head>

<body>


   <jsp:include page = "header.jsp"></jsp:include>
   <%
   DoctorService doctorService = new DoctorService();
   Set<DoctorDTO> doctors = new HashSet<DoctorDTO>();
	try {
		doctors = doctorService.findAllByDoctors();
		
     
	} catch (Exception e) {
		
		out.println(e.getMessage());
	}
   %>

    <section class="doctors" id="doctors">

        <h1 class="heading">
            our <span>doctors</span>
        </h1>

        <section class="filter">
            <div class="wrapper">
                <div id="search-container">
                    <input type="search" id="search-item" placeholder="search for doctors" onkeyup="search()">
                    <button id="search">Search</button>
                </div>
            </div>

        </section>

        <div class="box-container" id="doctor-list">
<%for ( DoctorDTO doctor:doctors) {
    
%>
    <div class="Box">
        <a href="./doctor details/doctor details.html?doctor_id=<%= doctor.getDoctorId() %>">
            <img src="<%= doctor.getDoctorImage()  %>" alt="<%= doctor.getFirstName()+""+doctor.getLastName() %>">
        </a>
        <h3><%= doctor.getFirstName()+""+doctor.getLastName()  %></h3>
        <span><%= doctor.getDepartment() %></span>
    </div>
<%
}
%>
        </div>

    </section>

    <section class="footer">
        <div class="box-container" id="box-container"></div>

    </section>


</body>

</html>