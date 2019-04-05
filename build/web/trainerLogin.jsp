<%-- 
    Document   : trainerLogin
    Created on : Mar 22, 2019, 12:32:02 AM
    Author     : OJAS MODI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
 <head>
	<title></title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	 <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
         <script>
             function submit1()
             {
                
                 return true;
             }
             </script>

  </head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">
    <img src="ccImage.png" width="30" height="30" class="d-inline-block align-top" alt="">
    Campus Connect
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="afterindex.html">Home <span class="sr-only">(current)</span></a>
      </li>
     <!-- <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item-->
    </ul>
    <div class="d-flex flex-row-reverse">
      <button class="btn btn-primary border border-info"  onclick="window.location.href='login.jsp'" type="button">Admin</button>
   
     </div>
  </div>
</nav>
     <div class="jumbotron jumbotron-fluid">
  <div class="container">
      
    <h1 class="display-4">Welcome to Trainer section</h1>
    <p class="lead">Please login or sign up to continue your journey.</p>
  </div>
</div>
	<div class="container">
		

		<div class="row">
			
			<div class="col-lg-6">
				<div class="card border-info">
					<h4 class="card-header text-center"> Login Form </h4>
					<br>
					<form action="checkTrainerLogin.jsp" method="post">
						<div class="form-group">
							<label for="user "> Username: </label>
							<input type="text" name="user" id="user" class="form-control">
						</div>
						<div class="form-group">
							<label for="pass "> Password: </label>
							<input type="text" name="pass" id="pass" class="form-control">
						</div>
						<button class="btn btn-success d-block m-auto" type="submit"> Submit </button>
					</form>
				
				</div>
			</div>

			<div class="col-lg-6">
				<div class="card border-info">
					<h4 class="card-header text-center"> Sign-Up Form </h4>
					<br>
					<form action="trainerRegistration.jsp" method="post">
						<div class="form-group">
							<label for="user "> Username: </label>
							<input type="text" name="user" id="user" class="form-control">
						</div>
						<div class="form-group">
							<label for="pass "> Password: </label>
							<input type="text" name="pass" id="pass" class="form-control">
						</div>
						<button class="btn btn-success d-block m-auto" type="submit" onclick='submit1()'> Submit </button>
						<div class="duplicate"> </div>
					</form>

				</div>
			</div>
				</div>
			</div>
    <footer style="margin-top: 3vh;">
        <center><p><b>Be Confident at every stage of your Life.</b></p></center>
    </footer>

</body>
</html>