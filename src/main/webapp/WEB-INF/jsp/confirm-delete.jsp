<%@ include file="fragments/header.jsp" %>
			
	<div class="container" style="margin-top: 10px;">
		<div class="row">
		
			<div class="col-md-12">
				<h3>Are You sure you want to delete car with details. You cannot undo this action.</h3>
				<form:form method="post" modelAttribute="car">
					<p>Car Name: <form:input path="carName" readonly="readonly" /></p>
					<p>Car Model: <form:input path="carModel" readonly="readonly"/></p>
					<p>Car Colour: <form:input path="carColour" disabled ="disabled"/></p>
				</form:form>
				<a href="${contextPath}/mycars"><button class="btn btn-default">No, Cancel</button></a>
				<a href="${contextPath}/confirmDelete?id=<%= request.getParameter("id") %>"><button class="btn btn-danger">Yes, Delete</button></a>
			</div>	
			
				
		</div>		
	</div>
		
<%@ include file="fragments/footer.jsp" %>