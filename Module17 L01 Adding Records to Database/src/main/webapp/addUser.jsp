<%@ page import="java.util.*" %>
<%@ page import="entity.User" %>

<%@ include file = "include/header.jsp" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			
			<form action="${pageContext.request.contextPath}/operation" method="post">
			
				User-name: <input type="text" name="username" required> <br><br>
				
				Email: <input type="email" name="email" required> <br><br>
				
				<input type="hidden" name="form" value="adduseroperation">
				
				<input type="submit" value="Add User">
				
			</form>
		</div>
	</div>
</div>

<%@ include file = "include/footer.jsp" %>