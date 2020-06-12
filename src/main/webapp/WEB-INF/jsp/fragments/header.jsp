<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
	<head>
		<title>Car Inventory System</title>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		
		<div class="container">
			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="/">Jay's Cars</a>
			    </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav">
			        <li><a href="/">Dashboard</a></li>
			        <li><a href="${contextPath}/mycars">My Cars</a></li>
			        <li><a href="${contextPath}/newcar">New Car</a></li>
			      </ul>
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="${contextPath}/logout"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      </ul>
			    </div>
			  </div>
			</nav>
		</div>
		