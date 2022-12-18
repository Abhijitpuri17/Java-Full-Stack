<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>For Loop</title>
	</head>
	
	<body>
	
		<%
			String[] names = {"Abhijit", "Ravi", "Omkar"} ;
		%>
	
		<c:forEach items= "<%=names%>" var="name">
			${name} <br/>
		</c:forEach>
	
		<c:forEach var = "i" begin="1" end="10" step="2">
			${i} <br/>
		</c:forEach>	
		
	</body>
	
</html>