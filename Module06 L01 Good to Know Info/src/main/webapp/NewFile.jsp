<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%
			String URL = "<a href='https://www.google.com'>Home<a/>" ;
			
			ServletContext context = getServletContext() ;
			
			context.setAttribute("url", URL) ;
			session.setAttribute("name", "Abhijit") ;
			
		%>
		
		<!-- this will be accessible throughout the app -->
		${url}
		
		${name}
		
		<br/>
		
	</body>
	
</html>