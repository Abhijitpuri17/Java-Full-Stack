<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>JSP File</title>
	</head>
	
	<body>
	
		<!-- Use directive element for files with static content -->
		<%@
			include file="file1.txt"
		%>
		
		<br/>
		
		<!-- Use jsp:include element for files with dynamic content -->
		<jsp:include page="file2.txt"/>
		
		
	</body>
	
</html>