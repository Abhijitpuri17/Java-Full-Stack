<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Member Area</title>
	</head>
	
	<body>
		<h1>Member Area</h1>
		
		<%
			String username = null, sessionID = null ;
			Cookie[] cookies = request.getCookies() ;
			
			if (cookies != null)
			{
				for (Cookie cookie: cookies)
				{
					if (cookie.getName().equals("username")){
						username = cookie.getValue() ;
					}
					
					if (cookie.getName().equals("JSESSIONID")){
						sessionID = cookie.getValue() ;
					} 
				}
			}
			
			
			if (sessionID == null || username == null)
			{
				response.sendRedirect("login.jsp") ;
			}
			
		
		%>
		
		Username: <%= username %>
		<br><br>
		Session ID : <%= sessionID %>
		<br><br>
		
		
		<form action="<%= request.getContextPath()%>/MemberAreaServlet" method="get">
			
			<input type="hidden" name="action" value="destroy">
			<input type="submit" value="logout">
			
		</form>
		
		
		
	</body>
	
</html>