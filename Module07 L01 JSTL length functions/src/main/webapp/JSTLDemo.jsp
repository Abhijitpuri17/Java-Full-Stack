<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Length function JSTL</title>
	</head>
	
	<body>
		${fn:length("Abhijit")}
		
		<%
			String[] names = {"Abhijit", "John", "Marshal"} ;
		%>
		
		<c:set var="namesArray" value="<%=names %>"/>
		
		
		${fn:length(namesArray)}
		
	</body>
	
</html>