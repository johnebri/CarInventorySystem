<%@ include file="fragments/header.jsp" %>
			
	<div class="container" style="margin-top: 10px;">
		<div class="row">
		
			<div class="col-md-12">
				
				<%
				    if (request.getParameter("edited") != null) {
				    %>	
				    	<div class="alert alert-success alert-dismissible">
						  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  <strong>Success!</strong> Car Edited Successfully
						</div>

					 <% 
				    } 
				%>
				
				<%
				    if (request.getParameter("added") != null) {
				    %>	
				    	<div class="alert alert-success alert-dismissible">
						  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  <strong>Success!</strong> Car added successfully
						</div>

					 <% 
				    } 
				%>
				
				<%
				    if (request.getParameter("deleted") != null) {
				    %>	
				    	<div class="alert alert-success alert-dismissible">
						  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  <strong>Success!</strong> Car Deleted Successfully
						</div>

					 <% 
				    } 
				%>
		        
				<a href="${contextPath}/newcar"><button class="btn btn-success"> + New Car</button></a>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Car Name</th>
							<th>Model</th>
							<th>Colour</th>
							<th>Datetime</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${mycars.size() == 0 }">   
							<tr>
								<td colspan="5">There are no cars to display</td>
							</tr>
						</c:if>
						<c:forEach items="${mycars}" var="mycar">
							<tr>
								<td>${mycar.carName}</td>
								<td>${mycar.carModel}</td>
								<td>${mycar.carColour}</td>
								<td><fmt:formatDate value="${mycar.dateTimeCreated}" pattern="dd/MM/yyyy" /></td>
								<td><a type="button" class="btn btn-success" href="/editcar?id=${mycar.id}">Edit</a></td>
								<td><a type="button" class="btn btn-warning" href="/deletecar?id=${mycar.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>	
			
				
		</div>		
	</div>
		
<%@ include file="fragments/footer.jsp" %>