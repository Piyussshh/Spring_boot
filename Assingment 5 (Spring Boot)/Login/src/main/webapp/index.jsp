<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<form action="Login">
	<div class="container mt-5">
		<div class="header" style="background-color: #F0F8FF; color: #003b6f;  border-top: 2px solid #bde0ff;border-bottom: 2px solid #bde0ff;">
            <h2><b>Login</b></h2>
        </div>
        <div class="content" style="min-height: 300px;background-color: #F0F8FF ;opacity : 0.9; font-size: 25px;">
            <div class="row">
                <div class="col-md-6 col-sm-12 mt-4 mb-4" style="padding-left: 90px">
                    <br>
                    <div class="row">
                        <div class="col-sm-5">
                            <label for="uname">Username:</label>
                        </div>
                        <div class="col-sm-7">
                            <input type="text" id="uname" name="uname" required><br><br>
                        </div>
                    </div>   
                    <div class="row">
                        <div class="col-sm-5">
                            <label for="pass">Password:</label>
                        </div>
                        <div class="col-sm-7">
                            <input type="password" id="pass" name="pass" required><br><br>
                        </div>
                    </div> 
                    <a href="#">Forgot Password?</a>
                </div>
               </div>
         </div>
        <div class="footer" style="background-color: #F0F8FF; border-top: 2px solid #bde0ff;border-bottom: 2px solid #bde0ff;">
        	<div class="button" style="text-align: right; font-size: 20px">
        	   <input type="submit" value="Login>>">
        	</div>
        </div>
    </div>
	</form>
</body>
</html>