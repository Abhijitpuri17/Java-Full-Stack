<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Set Properties</title>
	</head>
	
	<body>
		<jsp:useBean id="user" class="beans.User" scope="session"/>
		
		
		<form action="getProperty.jsp" method="get">
		
			First Name: <input type="text" name="firstName" value= "<jsp:getProperty property="firstName" name="user"/>" > <br><br>
		
			Last Name: <input type="text" name="lastName" value= "<jsp:getProperty property="lastName" name="user"/>" > <br><br>
		
			<input type="submit" value="submit">
		
		</form>
		  
	</body>
	
</html>