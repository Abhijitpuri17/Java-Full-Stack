<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	
	<head>
		<meta charset="ISO-8859-1">
		<title>Request Forwarded</title>
	</head>
	
	
	<!-- We can forward the request to other page -->
	<!-- can be used whenever we don't want to expose the original source of the file-->
	
	<body>
		Request Forwarded
		<%
			
			out.print(request.getParameter("name"));
		
			// redirects to another page
			//response.sendRedirect("Redirect.jsp") ;
		%>
	</body>
	
</html>