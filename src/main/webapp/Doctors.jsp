


<!DOCTYPE html>
<%@page import="in.fssa.doc4you.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css">
</head>

<body>
	<%
    User user = (User) request.getAttribute("loggedUser");
    HttpSession session1 = request.getSession(false); // Do not create a new session if it doesn't exist

    if (session1 == null || session1.getAttribute("loggedUser") == null) {
        // Session is invalid or not present, display an alert and redirect to login page
%>
	<script>
    alert("Your session has expired. Please log in again.");
    window.location.href = "<%= request.getContextPath() %>/login"; // Replace with your login page URL
</script>
	<%
        return; // Stop processing the rest of the JSP page
    }
%>

	<jsp:include page="header.jsp"></jsp:include>
	<%
   DoctorService doctorService = new DoctorService();
   List<DoctorDTO> doctors = new ArrayList<DoctorDTO>();
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
					<input type="search" id="search-item"
						placeholder="search for doctors" onkeyup="search()">
					<button id="search">Search</button>
				</div>
			</div>

		</section>

		<div class="box-container" id="doctor-list" style="gap: 5rem;">
			<%for ( DoctorDTO doctor:doctors) {
    
%>
			<div class="Box">
				<a href="<%= doctor.getDoctorId() %>"> <img
					src="<%= doctor.getDoctorImage()  %>"
					alt="<%= doctor.getFirstName()+""+doctor.getLastName() %>">
				</a>
				<h3><%= doctor.getFirstName()+""+doctor.getLastName()  %></h3>
				<span><%= doctor.getDepartment() %></span>
				<div>
					<a
						href="<%= request.getContextPath() %>/appointment/booknew?id=<%= doctor.getId() %>"
						style="display: inline-block; margin-top: .5rem; padding: 5px 15px; background-color: white; border: 1.5px solid #0e6453; border-color: #0e6453; color: #0e6453; font-size: 10px; text-decoration: none; border-radius: 5px;">
						Book Appointment </a>
				</div>

			</div>
			<%
}
%>
		</div>

	</section>

	<section class="footer">
		<jsp:include page="footer.jsp"></jsp:include>

	</section>
	<script type="text/javascript">

function search() {
	  const searchBox = document.getElementById("search-item");
	  const searchText = searchBox.value.toLowerCase();

	  const boxes = document.querySelectorAll(".Box");

	  boxes.forEach(box => {
	    const h3Element = box.querySelector("h3");
	    const spanElement = box.querySelector("span");

	    const h3Text = h3Element ? h3Element.textContent.trim().toLowerCase() : ""; // Trim whitespace from h3 content
	    const spanText = spanElement ? spanElement.textContent.trim().toLowerCase() : ""; // Trim whitespace from span content


	    if (h3Text.includes(searchText) || spanText.includes(searchText)) {
	      box.style.display = "";
	    } else {
	      box.style.display = "none";
	    }
	  });
	}

	const searchBox = document.getElementById("search-item");
	searchBox.addEventListener("keyup", search);


</script>

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
	
	</script>
</body>

</html>