<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Hello JSP</title>
	</head>
	
	<body>
		<h1>Hello JSP</h1>
		
		<!-- declaration elements -->
		
		<!-- We can add access specifiers to variables if we use declaration tag,
			 we can't use them when we use scriplet tag -->
		
		<%! public int a = 5 ;
			public int b = 5 ;
			private String name = "Abhijit" ;
			%>
			
		
		<!-- We can also declare methods inside declaration tag -->
			
		<%! public static int add(int a, int b) {return a+b ;} %>	
			
		
		<!-- Expression element -->
		<%= "Name = " + name + ", a = " +  a + ", b = " + b + "</br>" %>
					
		<%= new java.util.Date() + "</br>"%>
		
		<%= "25 * 100 = " + (25*100) + "</br>" %>
		
		<%= 25 > 30 %>
		
		<%= "5 + 7 = " + add(5, 7) + "</br>"%>
	
	</body>
</html>