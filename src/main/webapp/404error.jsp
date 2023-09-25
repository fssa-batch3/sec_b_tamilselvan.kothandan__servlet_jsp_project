<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>404 - Not Found</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">
</head>
<body>
    <h1 style = "color:#0e6453;"> 404 - Page Not Found</h1>
    <div style="text-align: center;">
    <img src ="<%=request.getContextPath() %>/assets/img/404 Error Page not Found with people connecting a plug-bro.png" >
    </div>
    <p style="font-size:1.5rem;">The requested page could not be found. Please check the URL or use the search bar to find what you're looking for.</p>
    <div style="text-align: center;">
    <a href="<%=request.getContextPath() %>/index" style="color:#0e6453; font-size:1.5rem;">Back to home page</a>
</div>
</body>
</html>