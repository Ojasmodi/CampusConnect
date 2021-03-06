<%-- 
    Document   : TrainingScheduleForm
    Created on : Jul 24, 2018, 11:09:52 AM
    Author     : OJAS MODI
--%>

<%@page import="model.ClassroomDAO"%>
<%@page import="model.Classroom"%>
<%@page import="java.util.*"%>
<%@page import="model.TrainerDAO"%>
<%@page import="model.Trainer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"  
              integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <style type="text/css">
            :root{
                font-size: 16px;
            }
            h1{
                margin-bottom: 8vh;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule-Form</title>
    </head>

    <body>
        <%
           // response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            //response.setHeader("Pragma", "no-cache");
            //response.setHeader("Expires", "0");
            try {
               // String s = session.getAttribute("user").toString();
                //out.print(s);
        %>
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
                    <button class="btn btn-primary"  onclick="window.location.href = 'logout.jsp'" type="button">Log Out</button>
                </div>
            </div>
        </nav>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <a class='btn btn-danger' href='adminsection.jsp'>Go back</a>
                <h1 class="display-4">Add Schedule here-</h1>
            </div>
        </div><div class='container' style="padding-bottom: 5%;">
            <form action="TrainingSchedule.jsp" method="post">
                <div class="form-group row justify-content-center">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Classroom No:</label>
                    <div class="col-sm-10">
                            <select class="custom-select" name="cno"><% List<Classroom> listofClassroom = ClassroomDAO.getAllClassrooms();
                                for (Classroom c : listofClassroom) {%><option><%=c.getCNo()%><%}%></option></select>
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Classroom No:</label>
                    <div class="col-sm-10">
                        <select name="course" class="custom-select">
                            <option value="Java">Java</option>
                            <option value="C">C</option>
                            <option value="Android">Android</option></select>
                    </div></div>

                <div class="form-group row justify-content-center">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Trainer:</label>
                    <div class="col-sm-10">
                        <select name="trainer" class="custom-select">
                            <% List<Trainer> listofTrainer = TrainerDAO.getAllTrainers();
                                for (Trainer t : listofTrainer) {%>
                            <option><%=t.getName()%><%}%></option>
                        </select>
                    </div></div>

                <div class="form-group row justify-content-center">
                    <label for="inputPassword8" class="col-sm-2 col-form-label">No. of Students:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="noOfStudents" placeholder="No.OfStudents">
                    </div>
                </div>                     

                <div class="form-group row justify-content-center">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Month of program:</label>
                    <div class="col-sm-10">
                        <select name="MOP" class="custom-select">
                            <option value="May">May</option>
                            <option value="June">June</option>
                            <option value="July">July</option></select>
                    </div></div>


                <div class="form-group row justify-content-center">
                    <div class="col-1">
                        <button type="submit" class="btn btn-primary">Add</button>

                    </div>
                    <div class="col-2" >
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </div>
            </form>
        </div>
        <% } catch (Exception e) {
                session.setAttribute("loginfirst", "yes");
                response.sendRedirect("login.jsp");
            }%>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    </body>
</html>

