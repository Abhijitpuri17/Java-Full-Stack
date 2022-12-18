<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Trim and EscapeXml</title>
	</head>
	
	<body>
		${fn:trim("  Abhijit   Puri") }
		
		<h1> EscapeXML Demo </h1>
		
		${fn:escapeXml("<h1> EscapeXML Demo </h1>") }
	</body>
	
</html>