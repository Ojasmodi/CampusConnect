<%-- 
    Document   : ShowTrainers
    Created on : Jul 23, 2018, 5:44:52 PM
    Author     : OJAS MODI
--%>

<%@page import="java.util.List"%>
<%@page import="model.TrainerDAO"%>
<%@page import="model.Trainer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */ 
.button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */
</style>
 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <link href="css/sb-admin.css" rel="stylesheet">
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers details</title>
    </head>
    <body>
        <%!int i=1; %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">
    <img src="ccImage.png" width="30" height="30" class="d-inline-block align-top" alt="">
    Campus Connect
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarText">
    
    <div class="d-flex flex-row-reverse">
      <button class="btn btn-primary"  onclick="window.location.href='login.html'" type="button">Log Out</button>
    </div>
  </div>
</nav>
    <div class="jumbotron jumbotron-fluid">
  <div class="container">
      <a class='btn btn-danger' href='adminsection.jsp'>Go back</a>
      <h1 class="display-4">Trainers List-</h1>
    
  </div></div>
        <div class='container-fluid'>
            <%
           try{  
               List<Trainer> listofTrainer=TrainerDAO.getAllTrainers();%>
     <table  class="table table-dark table-striped" width='70%'>
         <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Phone-no.</th>
      <th scope="col">Mail-ID</th>
      <th scope="col">Java</th>
      <th scope="col">C</th>
      <th scope="col">Android</th>
      <th scope="col">Experience</th>
      <th scope="col">MayAvailability</th>
      <th scope="col">JuneAvailability</th>
      <th scope="col">JulyAvailability</th>
      <!--<th scope="col">Edit</th>-->
      <th scope="col">Delete</th>
      
    </tr>
  </thead>
       
      <%i=1; for(Trainer p:listofTrainer){
      %>
       <tbody>
    <tr>
        <th scope="row"><%out.print(i);
        i++; %></th>
      <td><%=p.getName()%></td>
      <td><%=p.getAge()%></td>
      <td><%=p.getPhoneno()%></td>
      <td><%=p.getMailId()%></td>
      <td><%=p.getSkill1()%></td>
      <td><%=p.getSkill2()%></td>
      <td><%=p.getSkill3()%></td>
      <td><%=p.getExperience()%></td>
      <td><%=p.getMayAvailability()%></td>
      <td><%=p.getJuneAvailability()%></td>
      <td><%=p.getJulyAvailability()%></td>
      <!--<td><a class="button button2" href="EditTrainerForm.jsp?id=<%//=p.getTId()%>">Edit</a></td>-->
      <td><a class="button button3" href="DeleteTrainer.jsp?id=<%=p.getTId()%>"
           >Delete</a></td>
         
         
    </tr>
        <%}%>
       </tbody>
        </table>
        <%
       }
       catch(Exception e)
       {
           System.out.println(e);
       }
       %>
        </div>
       <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    </body>
    </html>       
        
        
        
   
       
       
</html>
