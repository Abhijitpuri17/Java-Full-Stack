<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Trim and EscapeXml</title>
	</head>
	
	<body>
		View WebSite in
		<br/>
		<a href="?locale=en_US">English(US)</a>  <br/>
		<a href="?locale=es_AR">Spanish</a>  <br/>
		<a href="?locale=ru_RU">Russian</a><br/>
		<a href="?locale=hi_IN">Hindi</a> <br/>
		
		<hr/>
		
		<fmt:setLocale value="${param.locale}"/>
		
		<fmt:bundle basename="i18n/website">
		
			<p><fmt:message key="label.hello">John</fmt:message>
			<p><fmt:message key="label.welcome"/>
			<p><fmt:message key="label.message"/>
			<p><fmt:message key="label.thanks"/>
		
		</fmt:bundle>
		
		<br/><br/>
		
		${param.locale}
		
	</body>
	
</html>