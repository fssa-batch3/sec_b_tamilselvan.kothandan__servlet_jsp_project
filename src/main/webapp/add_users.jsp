<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add users</title>
</head>
<body>
<h1>User Registration</h1>
<form method = "post" action= "create_user">
        <label for="firstname">first name:</label>
        <input type="text"  name="firstname" required><br>
        
                <label for="lastname">last name:</label>
        <input type="text"  name="lastname" required><br>
        
        <label for="email">Email:</label>
        <input type="email"  name="email" required><br>
        
        <label for="password">Password:</label>
        <input type="password"  name="password" required><br>
        
        <input type="submit" value="Register">
        </form>
</body>
</html>