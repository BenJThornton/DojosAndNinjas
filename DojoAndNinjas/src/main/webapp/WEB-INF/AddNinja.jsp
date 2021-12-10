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
<title>New Ninja</title>
</head>
<body>
	<h1>Add a Ninja</h1>
	<form:form action="/ninjas/add" method="post" modelAttribute="ninja" class="form-control">
		<div>
			<form:label path="firstName" class="form-label">First Name</form:label>
			<form:input path="firstName" type="text" class="form-control" />
			<form:errors path="firstName" class="text-danger"/>
		</div>
		<div>
			<form:label path="lastName" class="form-label">Last Name</form:label>
			<form:input path="lastName" type="text" class="form-control" />
			<form:errors path="lastName" class="text-danger"/>
		</div>
		<div>
			<form:label path="age" class="form-label">Age</form:label>
			<form:input path="age" type="text" class="form-control" />
			<form:errors path="age" class="text-danger"/>
		</div>
		<div>
			<form:label path="dojo" class="form-label">Dojo</form:label>
			<form:select path="dojo" class="form-select">
				<c:forEach var="eachDojo" items="${dojos}">
					<form:option value="${eachDojo.id}">${eachDojo.name}</form:option>
				</c:forEach>
			</form:select>
		</div>
	</form:form>
</body>
</html>