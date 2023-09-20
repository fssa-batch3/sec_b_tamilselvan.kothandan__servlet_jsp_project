

<%@page import="in.fssa.doc4you.model.User"%>
<div class="box-container" id="box-container">
<% User user = (User) session.getAttribute("loggedUser");

boolean isLogin_in = user != null;
%>
<%
if (isLogin_in == false) {
%>
	<div class="box">
    <h3>Quick links</h3>
    <a href="<%=request.getContextPath()%>/index.jsp">
        <i class="fas fa-chevron-right"></i> Home 
    </a>
    <a href="#services">
        <i class="fas fa-chevron-right"></i> Services 
    </a>
    <a href="<%=request.getContextPath()%>/About_page.jsp">
        <i class="fas fa-chevron-right"></i> About 
    </a>
</div>

<div class="box">
    <h3>contact info</h3>
    <a href="#">
        <i class="fas fa-phone"></i> +91-9445535374 
    </a>
    <a href="#">
        <i class="fas fa-envelope"></i> tamilselvan.kothandan@fssa.freshworks.com 
    </a>
    <a href="#">
        <i class="fas fa-map-marker-alt"></i> Chennai-600081 
    </a>
</div>

<div class="box">
    <h3>follow us</h3>
    <a href="#">
        <i class="fab fa-facebook-f"></i> facebook 
    </a>
    <a href="#">
        <i class="fab fa-twitter"></i> twitter 
    </a>
    <a href="#">
        <i class="fab fa-instagram"></i> instagram 
    </a>
    <a href="#">
        <i class="fab fa-linkedin"></i> linkedin 
    </a>
</div>

<div class="boxs">
    <img src="<%=request.getContextPath()%>/assets/img/image.png" alt="logo" id="img">
    <p id="p">Copyright © 2023, Doc 4 You. All rights reserved.</p>
</div>

<%
} else {
%>

	<div class="box">
    <h3>Quick links</h3>
    <a href="${Home}">
        <i class="fas fa-chevron-right"></i> Home 
    </a>
    <a href="${About}">
        <i class="fas fa-chevron-right"></i> About 
    </a>
    <a href="${Doctor}">
        <i class="fas fa-chevron-right"></i> Doctors 
    </a>
    <a href="${Hospital}">
        <i class="fas fa-chevron-right"></i> Hospital 
    </a>
</div>

<div class="box">
    <h3>contact info</h3>
    <a href="#">
        <i class="fas fa-phone"></i> +91-9445535374 
    </a>
    <a href="#">
        <i class="fas fa-envelope"></i> tamilselvan.kothandan@fssa.freshworks.com 
    </a>
    <a href="#">
        <i class="fas fa-map-marker-alt"></i> Chennai-600081 
    </a>
</div>

<div class="box">
    <h3>follow us</h3>
    <a href="#">
        <i class="fab fa-facebook-f"></i> facebook 
    </a>
    <a href="#">
        <i class="fab fa-twitter"></i> twitter 
    </a>
    <a href="#">
        <i class="fab fa-instagram"></i> instagram 
    </a>
    <a href="#">
        <i class="fab fa-linkedin"></i> linkedin 
    </a>
</div>

<div class="boxs">
    <img src="<%=request.getContextPath()%>/assets/img/image.png" alt="logo" id="img">
    <p id="p">Copyright © 2023, Doc 4 You. All rights reserved.</p>
</div>

<%
}
%>
</div>