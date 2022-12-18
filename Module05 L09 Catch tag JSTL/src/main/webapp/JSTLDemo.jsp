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
		
		<c:catch var="exception">
			<%
				int a = 4 / 0 ;
				out.print(a) ;
			%>
		</c:catch>
		
		${exception}
		<br/>
		
		Testing...
		
	</body>
	
</html>