<%@ include file="fragments/header.jsp" %>
			
	<div class="container" style="margin-top: 10px;">
		<div class="row">
			
			<div class="col-md-6">
				<h3>Add a New Car</h3>
				<form:form method="post" modelAttribute="car">
				
				<form:hidden path="dateTimeCreated" />
				
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
				    <form:select path="carColour" class="form-control" required="required" >
				    	<option></option>
				    	<option <c:if test="${carColour eq 'Red'}">selected="selected"</c:if> >
						    Red
						</option>
				    	<option <c:if test="${carColour eq 'Blue'}">selected="selected"</c:if> >
						    Blue
						</option>
				    	<option <c:if test="${carColour eq 'Black'}">selected="selected"</c:if> >
						    Black
						</option>
				    	<option <c:if test="${carColour eq 'Gray'}">selected="selected"</c:if> >
						    Gray
						</option>
						<option <c:if test="${carColour eq 'White'}">selected="selected"</c:if> >
						    White
						</option>
						<!-- <option value="notOnList" id="notOnTheList">Colour Not On the List</option> -->
				    </form:select>
				  </div>				  
				  
				  <button type="submit" class="btn btn-primary">Save Car</button>
				</form:form>
			</div>
			
			<div class="col-md-6">
				
			</div>		
			
				
		</div>		
	</div>
	
	<!-- <script>
		function newColour(){
			let carColourBlock = document.getElementById("carColourBlock");
			let carColour = document.getElementById("carColour");
			let notOnList=document.getElementById("notOnTheList").value;
			let newCarColour = document.getElementById("newCarColour");
			if(carColour.value ==="notOnList"){
				carColourBlock.style.display ='none';
				carColourBlock.parentNode.removeChild(carColourBlock);
				newCarColour.style.display ='block';
			}
			//alert(carColour.value)
		}
	</script> -->
		
<%@ include file="fragments/footer.jsp" %>