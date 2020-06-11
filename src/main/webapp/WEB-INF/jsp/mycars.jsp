<%@ include file="fragments/header.jsp" %>
			
	<div class="container" style="margin-top: 10px;">
		<div class="row">
		
			<div class="col-md-12">
				<!-- <h4>These are my cars</h4> -->
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
								<td><a type="button" class="btn btn-success" href="/update-todo?id=${mycar.id}">Edit</a></td>
								<td><a type="button" class="btn btn-warning" href="/delete-todo?id=${mycar.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>	
			
				
		</div>		
	</div>
		
<%@ include file="fragments/footer.jsp" %>