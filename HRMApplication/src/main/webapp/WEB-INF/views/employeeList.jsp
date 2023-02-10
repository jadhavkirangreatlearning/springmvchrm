<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<title>Students Directory</title>
</head>

<body>

	<div class="container">

		<h3>Employee Directory</h3>
		<hr>

		<!-- Add a search form -->

		<form action="/HRMApplication/books/search" class="form-inline">

			<!-- Add a button -->
			<a href="/HRMApplication/employee/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Employee </a> 
			



		</form>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Address</th>
					<th>Contact Number</th>
					<th>Salary</th>
					<th>Action</th>
					
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${empList}" var="employee">
					<tr>
						<td><c:out value="${employee.empName}" /></td>
						<td><c:out value="${employee.empAddress}" /></td>
						<td><c:out value="${employee.empContactNumber}" /></td>
						<td><c:out value="${employee.empSalary}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/HRMApplication/employee/showFormForUpdate?empId=${employee.empId}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a href="/HRMApplication/employee/delete?empId=${employee.empId}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Employee?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>



