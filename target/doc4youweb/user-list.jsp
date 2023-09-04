<%@page import="in.fssa.doc4you.model.User"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.doc4you.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	UserService userService = new UserService();
	Set<User> users = userService.getAllUsers();
	%>

	Hello world

	<%=users%>

</body>
</html>