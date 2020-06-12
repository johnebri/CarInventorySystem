<%@ include file="fragments/header.jsp" %>
	
	<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
</style>
			
	<div class="container">			
		<h2>Welcome back ${username} </h2>
		

			  <div class="column">
			    <div class="card">
			      <h3>My Cars</h3>
			      <h2>${noOfCars}</h2>
			      <a href="${contextPath}/mycars"><button class="btn btn-primary">View Cars</button></a>
			    </div>
			  </div>
		


	</div>
	

		
<%@ include file="fragments/footer.jsp" %>