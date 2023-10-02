<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css">
</head>
<body>
	<h1>An error occurred</h1>
	<p>We're sorry, but an error occurred while processing your
		request. Please try again later.</p>
	<div style="text-align: center;">
		<a href="<%=request.getContextPath() %>/index"
			style="color: #0e6453; font-size: 1.5rem;">Back to home page</a>
	</div>
</body>
</html>