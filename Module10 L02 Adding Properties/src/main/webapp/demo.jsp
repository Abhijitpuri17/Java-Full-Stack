<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>JSTL I18N</title>
	</head>
	
	<body>
		View WebSite in
		<br/>
		<a href="?locale=en_US">English(US)</a>  <br/>
		<a href="?locale=es_AR">Argentina</a>  <br/>
		<a href="?locale=ru_RU">Russia</a><br/>
		<a href="?locale=hi_IN">India</a> <br/>
		
		<hr/>
		
		<p> Hello </p>
		<p> Welcome to our Country </p>
		
		<p> We are pleased with your presence </p>
		
		<p> Thank you </p>
		
		
	</body>
	
</html>