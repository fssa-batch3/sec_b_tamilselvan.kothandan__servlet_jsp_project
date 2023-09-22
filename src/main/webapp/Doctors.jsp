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
        <a href="<%= doctor.getDoctorId() %>">
            <img src="<%= doctor.getDoctorImage()  %>" alt="<%= doctor.getFirstName()+""+doctor.getLastName() %>">
        </a>
        <h3><%= doctor.getFirstName()+""+doctor.getLastName()  %></h3>
        <span><%= doctor.getDepartment() %></span>
        <div>
<a href="<%= request.getContextPath() %>/appointment/booknew?id=<%= doctor.getId() %>"
   style="display: inline-block;
          padding: 10px 20px;
          background-color: white;
          border-color:#0e6453;
          
          text-decoration: none;
          border-radius: 5px;">
    Book Appointment
</a>        </div>
        
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
	  // Get the value of the search box and convert it to lowercase
	  const searchbox = searchBox.value.toLowerCase();

	  // Find all elements with class 'Box'
	  const box = document.querySelectorAll(".Box");

	  // Loop through each 'Box' element
	  for (let i = 0; i < box.length; i++) {
	    // Find the first <h3> element inside the current 'Box' element
	    const match = box[i].getElementsByTagName("h3")[0];

	    if (match) {
	      // Get the text content of the <h3> element and convert it to lowercase
	      const textvalue = match.textContent || match.innerHTML;
	      const lowercaseTextValue = textvalue.toLowerCase();

	      // Show the 'Box' element if the search text matches the <h3> text
	      if (lowercaseTextValue.indexOf(searchbox) > -1) {
	        box[i].style.display = "";
	      } else {
	        box[i].style.display = "none";
	      }
	    }
	  }
	}

	// Get the search box element and add an event listener for when the user types
	const searchBox = document.getElementById("search-item");
	searchBox.addEventListener("keyup", search);

</script>


</body>

</html>