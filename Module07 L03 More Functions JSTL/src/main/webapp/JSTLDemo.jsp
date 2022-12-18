<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>More Functions</title>
	</head>
	
	<body>
		<c:set var="We" value="Studyeasy.org"></c:set>
		
		${fn:startsWith(We, "S") }
		
		<br>
		
		${fn:endsWith(We, "org") }
		
		<br/>
		
		${fn:contains(We, "Easy") }
		
		<br/>
		
		${fn:containsIgnoreCase(We, "Easy") }
		
		<br/>
		
		${fn:toUpperCase("Abhijit") }
		
		<br/>
		
		${fn:toLowerCase("Abhijit") }
		
		<br/>
		
		${fn:indexOf("Abhijit", "i") }
		
		<br/>
		
		${fn:replace("Abhijit", "i", "ee") }
		
		<br/>
		${fn:substring("Abhijit", 2, 5) }
		
		<br/>
		${fn:substringBefore("Abhijit", "it") }
		
		<br/>
		${fn:substringAfter("Abhijit", "Ab") }
		
		<br/>
		
		
		
		<c:set var="elements" value="${fn:split('www.google.com', '.')}"></c:set>
		
		<c:forEach items="${elements}" var="element">
			<c:out value="${element}"></c:out>
			<br/>
		</c:forEach>
		
		Joined Elements: ${fn:join(elements, '.') }
		<br/>
		
	</body>
	
</html>