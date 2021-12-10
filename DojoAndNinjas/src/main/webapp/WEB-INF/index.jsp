<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Dojo</title>
</head>
<body>
	<div class="container mt-5">
		<h1>New Dojo</h1>
		<form:form action="/dojo/add" method="post" modelAttribute="dojo" class="form-control">
			<div>
				<form:label path="name" class="form-label">Dojo Name</form:label>
				<form:input path="name" type="text" class="form-control"/>
				<form:errors path="name" class="text-danger" />
			</div>
			<button>Create</button>
		</form:form>
	</div>
</body>
</html>