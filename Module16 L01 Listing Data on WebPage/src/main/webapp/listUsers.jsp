
<%@ page import="java.util.*" %>
<%@ page import="entity.User" %>

<%@ include file = "include/header.jsp" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			
			<h1><strong>Users List</strong></h1>
		
			<table border="1.0">
				<thead>
					<th style="padding:10px">Users ID</th>
					<th style="padding:10px">Username</th>
					<th style="padding:10px">Email ID</th>
				</thead>
				
				<%
					List<User> listUsers= (List)request.getAttribute("usersList") ;
					for(int i = 0; i < listUsers.size(); i++){
						
						out.print("<tr>") ;
						
						out.print("<td style=\"padding:10px\">" + listUsers.get(i).getUsers_id() + "</td>");
						out.print("<td style=\"padding:10px\">" + listUsers.get(i).getUsername() + "</td>");
						out.print("<td style=\"padding:10px\">" + listUsers.get(i).getEmail() + "</td>");
							
						out.print("</tr>") ;
					}
				%>
				
			</table>
			
		</div>
	</div>
</div>

<%@ include file = "include/footer.jsp" %>