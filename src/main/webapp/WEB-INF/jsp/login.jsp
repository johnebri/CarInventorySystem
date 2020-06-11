<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
	<head>
		<title>Login</title>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3" style="margin-top: 100px;">
				<h2>Bootstrap Login form</h2>
				<form action="${contextPath}/login" method="post">
				  <div class="form-group">
				    <label for="username">Username:</label>
				    <input type="text" class="form-control" id="username" name="username" required>
				  </div>
				  <div class="form-group">
				    <label for="password">Password:</label>
				    <input type="password" class="form-control" id="password" name="password" required>
				  </div>
				  <!-- <div class="checkbox">
				    <label><input type="checkbox"> Remember me</label>
				  </div> -->
				  <button type="submit" class="btn btn-default">Login</button>
				</form>
			</div>		
		</div>		
	</div>
	
	</body>
</html>
	


