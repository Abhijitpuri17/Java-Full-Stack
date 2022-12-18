<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	
	
	<!-- We can write any java program here -->
	<body>
		<%
		   int num = 0 ; 
		  
		   out.println(num + "</br>") ;
		   
		   class A
		   {
			   int a = 5 ;
			   int add(int a, int b)
			   {
				   return a + b ;
			   }
		   }
		   
		   out.print(new A().a + "</br>") ;
			
		   out.print(new A().add(5, 4)) ;	
		%>
		
	</body>
	
</html>