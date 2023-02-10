<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Employee</title>
</head>

<body>

	<div class="container">

		<h3>Employee Directory</h3>
		<hr>

		<p class="h4 mb-4">Employee</p>

		<form action="/HRMApplication/employee/save" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="empId" value="${employee.empId}" />

			<div class="form-inline">
				<input type="text" name="empName" value="${employee.empName}"
					class="form-control mb-4 col-4" placeholder="Employee Name">



			</div>

			<div class="form-inline">

				<input type="text" name="empAddress" value="${employee.empAddress}"
					class="form-control mb-4 col-4" placeholder="Employee Address">



			</div>

			<div class="form-inline">

				<input type="text" name="empContactNumber" value="${employee.empContactNumber}"
					class="form-control mb-4 col-4" placeholder="Employee Contact Number">



			</div>
			<div class="form-inline">

				<input type="text" name="empSalary" value="${employee.empSalary}"
					class="form-control mb-4 col-4" placeholder="Employee Salary">



			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="/HRMApplication/employee/list">Back to Employee List</a>

	</div>
</body>

</html>










