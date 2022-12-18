<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<c:import url="/include/header.jsp">
	<c:param name="title" value="JSTL Import and params"></c:param>
</c:import>		

	<a href="<c:url value="AnotherPage.jsp"/>">Another Page</a>
	
	<c:redirect url="http://www.google.com"></c:redirect>

<c:import url="/include/footer.jsp"></c:import>
