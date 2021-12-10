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
		<a href="/">Add a Dojo</a>
		<a href="/ninja">Add a Ninja</a>
			<table class="table table-striped">
				<tr>
					
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
				<c:forEach var="ninja" items="${ninjas}">
					<tr>
						
						<td>${ninja.firstName}</td>
						<td>${ninja.lastName}</td>
						<td>${ninja.age}
					</tr>
				</c:forEach>
			</table>
	</div>
</body>
</html>