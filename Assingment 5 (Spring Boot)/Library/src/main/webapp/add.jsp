<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<h2 style="text-align:center"><b>Add Book Details</b></h2>
	<form action="Logout">
	<div class="logout" style="text-align: right; margin-right:20px">
		<h5>Welcome User</h5>
		<button type="submit" class="btn btn-warning">Logout</button><br><br>
	</div>
	</form>


	<form action="register"  method="post">
		<div class="container">
			<div class="row">
				<h5>Please Enter Book Details</h5>
				<br>
				<br>
				<br>
				<div class="row">
					<div class="col-sm-3">
						<label for="Id">BookId:</label>
					</div>
					<div class="col-sm-9">
						<input type="text" id="Id" name="Id"><br>
						<br>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						<label for="Name">Book Name:</label>
					</div>
					<div class="col-sm-9">
						<input type="text" id="Name" name="Name"><br>
						<br>
					</div>
				</div>
				<div class="row">
                        <div class="col-sm-3">
                            <label for="Author">Author :</label>
                        </div>
                        <div class="col-sm-9">
                            <select id="Author" name="Author">  
							<option value = "Robert Cecil">Robert Cecil   
							</option>  
							<option value = "Andy Hunt">Andy Hunt   
							</option>  
							<option value = "Enrich Gamma">Enrich Gamma  
							</option>  
							<option value = "E.M. Forster">E.M. Forster  
							</option>  
							</select>  <br><br>
                        </div>
                    </div> 				
                     <div class="row">
                        <div class="col-sm-3">
                            <label for="Date">Added On:</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="Date" name="Date" readonly><br><br>
                        </div>
                    </div> 
			
			</div>
			<input class="btn btn-sm btn-primary" type="submit" value="Submit"><br>
			<br>
		</div>
	</form>
	
	<div class="container">
		<a class="btn btn-sm btn-danger" href="/">Cancel</a>
	</div>


</body>
<script>
	const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
	var today = new Date();
	var month = months[today.getMonth()];
	var date = today.getDate()+' '+month+' '+today.getFullYear();
	document.getElementById("Date").value = date;
</script>
</html>