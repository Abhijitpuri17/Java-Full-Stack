<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	
	<body>
		<jsp:useBean id="user" class="beans.User" scope="page"></jsp:useBean>
		${user.getFirstName()} 
		<jsp:setProperty property="firstName" name="user" value="Abhijit"/>
		
		${user.getFirstName()} 
			
	</body>
	
</html>