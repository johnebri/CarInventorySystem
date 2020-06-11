<%@ include file="fragments/header.jsp" %>
			
	<div class="container" style="margin-top: 10px;">
		<div class="row">
		
			<div class="col-md-6">
				<form:form method="post" modelAttribute="car">
				
				<%-- <fieldset class="form-group">
					<form:label path="carName">Description</form:label>
					<form:input path="carName" type="text" name="carName" class="form-control" required="required" />
					<form:errors path="carName" cssClass="text-warning"></form:errors>
				</fieldset>	 --%>
				
				  <div class="form-group">
				    <form:label path="carName">Name of Car</form:label>
				    <form:input path="carName" type="text" name="carName" class="form-control" required="required" />
				  </div>
				  
				   <div class="form-group">
				    <form:label path="carModel">Model of Car:</form:label>
				    <form:input path="carModel" type="text" class="form-control" required="required" />
				  </div>
				  
				   <div class="form-group">
				    <form:label path="carColour">Colour</form:label>
				    <form:select path="carColour" id="carColour" class="form-control" required="required">
				    	<option></option>
				    	<option>Red</option>
				    	<option>Blue</option>
				    	<option>Green</option>
				    	<option>Gray</option>
				    </form:select>
				  </div>
				  
				  <button type="submit" class="btn btn-default">Save</button>
				</form:form>
			</div>
			
			<div class="col-md-6">
				<h2>Image Here</h2>
				
			</div>		
			
				
		</div>		
	</div>
		
<%@ include file="fragments/footer.jsp" %>