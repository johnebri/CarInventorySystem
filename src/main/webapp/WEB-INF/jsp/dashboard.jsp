<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
	<head>
		<title>First Web App</title>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="row">
			<div class="container">
				<nav class="navbar">
				  <div class="container-fluid">
				    <div class="navbar-header">
				      <a class="navbar-brand" href="#">Jay's Car Inventory System</a>
				    </div>
				    <ul class="nav navbar-nav">
				    	<li><a href="#">Dashboard</a></li>
				      <li class="active"><a href="#">My Cars</a></li>
				      <li><a href="#">New Car</a></li>
				    </ul>
				    <ul class="nav navbar-nav navbar-right">
				      <li><a href="${contextPath}/logout"><span class="glyphicon glyphicon-user"></span> Sign Out</a></li>
				    </ul>
				  </div>
				</nav>
			</div>
		</div>
			
		<div class="container">
		
			

			<div><button class="btn btn-primary">Test button</button></div>
		</div>
	</body>
</html>
