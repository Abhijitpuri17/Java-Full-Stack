<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Log In</title>
	</head>
	
	<body>
		<form action="<%= request.getContextPath()%>/SiteController" method="post">
			Username: <input type="text" name="username" placeholder="name">
			<br/><br/>
			
			Password: <input type="password" name="password" placeholder="password">
			<br/><br/>
			
			<input type="submit" value="submit">
			
		</form>
	</body>
	
</html>