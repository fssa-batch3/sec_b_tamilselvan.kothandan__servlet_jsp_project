

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
		<a href="<%=request.getContextPath()%>/index"> <i
			class="fas fa-chevron-right"></i> Home
		</a> <a href="<%=request.getContextPath()%>/index"> <i
			class="fas fa-chevron-right"></i> Services
		</a> <a href="<%=request.getContextPath()%>/about"> <i
			class="fas fa-chevron-right"></i> About
		</a>
	</div>

	<div class="box">
		<h3>contact info</h3>
		<a href="#"> <i class="fas fa-phone"></i> +91-9445535374
		</a> <a href="#"> <i class="fas fa-envelope"></i>
			tamilselvan.kothandan@fssa.freshworks.com
		</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> Chennai-600081
		</a>
	</div>

	<div class="box">
		<h3>follow us</h3>
		<a href="https://www.facebook.com/rohitselvan?mibextid=ZbWKwL"> <i
			class="fab fa-facebook-f"></i> facebook
		</a> <a href="https://instagram.com/_tamilsoul?igshid=OGQ5ZDc2ODk2ZA==">
			<i class="fab fa-instagram"></i> instagram
		</a> <a
			href="https://www.linkedin.com/in/tamilselvan-kothandan-bb3262252/">
			<i class="fab fa-linkedin"></i> linkedin
		</a>
	</div>

	<div class="boxs">
		<img src="<%=request.getContextPath()%>/assets/img/image.png"
			alt="logo" id="img">
		<p id="p">Copyright © 2023, Doc 4 You. All rights reserved.</p>
	</div>

	<%
} else {
%>

	<div class="box">
		<h3>Quick links</h3>
		<a href="<%= request.getContextPath()%>/index"> <i
			class="fas fa-chevron-right"></i> Home
		</a> <a href="<%= request.getContextPath()%>/about"> <i
			class="fas fa-chevron-right"></i> About
		</a> <a href="<%= request.getContextPath()%>/doctor"> <i
			class="fas fa-chevron-right"></i> Doctors
		</a>

	</div>

	<div class="box">
		<h3>contact info</h3>
		<a href="#"> <i class="fas fa-phone"></i> +91-9445535374
		</a> <a href="#"> <i class="fas fa-envelope"></i>
			tamilselvan.kothandan@fssa.freshworks.com
		</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> Chennai-600081
		</a>
	</div>

	<div class="box">
		<h3>follow us</h3>
		<a href="https://www.facebook.com/rohitselvan?mibextid=ZbWKwL"> <i
			class="fab fa-facebook-f"></i> facebook
		</a> <a href="#https://instagram.com/_tamilsoul?igshid=OGQ5ZDc2ODk2ZA==">
			<i class="fab fa-instagram"></i> instagram
		</a> <a
			href="https://www.linkedin.com/in/tamilselvan-kothandan-bb3262252/">
			<i class="fab fa-linkedin"></i> linkedin
		</a>
	</div>

	<div class="boxs">
		<img src="<%=request.getContextPath()%>/assets/img/image.png"
			alt="logo" id="img">
		<p id="p">Copyright © 2023, Doc 4 You. All rights reserved.</p>
	</div>

	<%
}
%>
</div>