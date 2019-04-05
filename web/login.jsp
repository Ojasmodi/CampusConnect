<%-- 
    Document   : login
    Created on : Mar 21, 2019, 4:42:57 PM
    Author     : OJAS MODI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Login Page</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body>
     <%
            try{
            String s = session.getAttribute("sessionout").toString();
            out.print("<h2>You are successfully Logged-out !</h2>");
            session.removeAttribute("sessionout");
             }
        catch(Exception e){
            //out.print("Please Login first !");
            
        }
             try{
            String s1= session.getAttribute("loginfirst").toString();
            out.print("<h2>Please Login first !</h2>");
            session.removeAttribute("loginfirst");
             }
        catch(Exception e){
            
        }
            finally{
                
         %>
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
      <li class="nav-item ">
        <a class="nav-link" href="afterindex.html">Home <span class="sr-only">(current)</span></a>
      </li>
     <!-- <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About team</a>
      </li>-->
    </ul>
    <div class="d-flex flex-row-reverse">
      <button class="btn btn-primary"  onclick="window.location.href='trainerLogin.jsp'" type="button">Trainer?</button>
    </div>
  </div>
</nav>
    
    
  <div class="container">
    <div class="card card-login mx-auto mt-5 border border-info">
      <div class="card-header alert-primary">Admin Login</div>
      <div class="card-body">
        <form action="checklogin.jsp" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" name="username" placeholder="Enter username">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password" name="password">
          </div>
          
            <input type="submit" value="Login" class="btn btn-primary btn-block">
        </form>
      </div>
    </div>
  </div>
    <%}%>

  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
