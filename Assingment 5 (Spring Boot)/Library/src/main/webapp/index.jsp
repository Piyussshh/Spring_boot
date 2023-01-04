<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.nagarro.Library.entity.*"
    import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Listing</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>



</head>
<body>
	<h2 style="text-align:center"><b>Books Listing</b></h2>
		<form action="logout">
		<div class="logout" style="text-align: right; margin-right:20px">
			<h5>Welcome User</h5>
			<button type="submit" class="btn btn-warning">Logout</button><br><br>
		</div>
		</form>

	<div class="container p-5">
	<form action="addBook">
		<button class="btn btn-sm btn-success">Add a book</button><br><br>
	</form>
     <table class="table align-middle table-bordered border-dark">
			<tr>
				<td style="width:10%"><b>Book code</b></td>
				<td style="width:10%"><b>Book Name</b></td>
				<td style="width: 10%"><b>Author</b></td>
				<td style="width: 10%"><b>Date Added</b></td>
				<td style="width: 10%"><b>Action</b></td>
				
			</tr>

     		<c:forEach items="${bookList}" var="entry">
     		<tr>
     				<td>${entry.getId()}</td>
     				<td>${entry.getName()}</td>
     				<td>${entry.getAuthor()}</td>
     				<td>${entry.getDate()}</td>
     				<td><a class="btn btn-sm btn-primary"
						 href="/edit/${entry.getId()}">Edit</a> <a
						class="btn btn-sm btn-danger"
						 href="/delete/${entry.getId()}">Delete</a></td>
				</tr>
        <br>
        <br>
    </c:forEach>
     	
             
	
		</table>

	</div>

</body>
<style type="text/css">
	th,td
	{
		border: 2px solid black;
    }
</style>
</html>