<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Formatting Date</title>
	</head>
	
	<body>
		<c:set var="date" value="<%=new java.util.Date()%>"></c:set>
		
		<c:out value="${date }"></c:out>
		
		<br/>
		
		Time: <fmt:formatDate type="time" value="${date}"/>
		<br/>
		
		Date: <fmt:formatDate type="date" value="${date}"/>
		<br/>
		
		Both : <fmt:formatDate type="both" value="${date}"/>
		<br/>
		
		Both : <fmt:formatDate type="both" value="${date}" timeZone="GMT -1"/>
		<br/>
		
		<fmt:setLocale value="hi_IN"/>
		
		Both : <fmt:formatDate type="both" value="${date}" timeZone="IST"/>
		<br/>
		
		
		
	</body>
	
</html>