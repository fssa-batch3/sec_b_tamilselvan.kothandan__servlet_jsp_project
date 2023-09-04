<%@page import="in.fssa.doc4you.model.User"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.doc4you.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
	<table>
		<tr>
			<th>User List</th>
		</tr>
		<%
		UserService userService = new UserService();
		Set<User> users = userService.getAllUsers();
		%>

		<%
		for (User user : users) {
		%>
		<tr>
			<td><%=user.getFirstName()%></td>
			<td><%=user.getLastName()%>
	<td><%=user.getEmail()%></td>
	<td><%=user.getPassword()%></td>
		</tr>
		<%
		}
		%>
	</table>

	</body>
</html>