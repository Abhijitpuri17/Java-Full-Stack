<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Set Property</title>
	</head>
	
	<body>
		<jsp:useBean id="user" class="beans.User" scope="session"/>
		
		<jsp:setProperty property="firstName" name="user" value="Abhijit"/>
		<jsp:setProperty property="lastName" name="user" value="Puri"/>
		
		Values have been Set
		
	</body>
	
</html>