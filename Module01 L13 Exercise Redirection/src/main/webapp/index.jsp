<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Home</title>
	</head>
	
	<body>
		It's Home Page
		<br/>
		
		<a href="<%= request.getContextPath() %>/Controller?page=login">Log In</a>
		<br/>
		
		<a href="<%= request.getContextPath() %>/Controller?page=signup">Sign Up</a>
		<br/>
		
		<a href="<%= request.getContextPath() %>/Controller?page=about">About</a>
		<br/>
		
	</body>
	
</html>