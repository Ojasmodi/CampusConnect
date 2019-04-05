<%-- 
    Document   : index3
    Created on : Mar 21, 2019, 4:28:00 PM
    Author     : OJAS MODI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin section</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"  
              integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    </head>
    <body>
        <%
            //response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            //response.setHeader("Pragma", "no-cache");
            //response.setHeader("Expires", "0");
            try {
                //String s = session.getAttribute("admin").toString();
                //out.print(s);
        %>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
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
                <h1 class="display-4">Welcome back OJAS</h1>
                <p class="lead">Explore options down here....</p>
            </div>
        </div>
        <div class="container" style="padding-bottom:5%">
            <div class="row">
                <div class="col">
                    <div class="card border-info" style="width: 18rem;margin-top: 5vh; background:#c9d7e2;">
                        <img src="cal.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Training Calender</h5>
                            <p class="card-text">Enter here to know the entire schedule of Trainings. </p>
                            <a href="TrainingCalender.jsp" class="btn btn-primary opening" style="width:90%;">Open</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-info" style="width: 18rem;margin-top: 5vh;background:#f2ebd7;">
                        <img src="ccd.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">ADD/DELETE Schedule</h5>
                            <p class="card-text">Enter this section to add or delete schedule.</p>
                            <a href="TrainingScheduleForm.jsp" class="btn btn-primary opening" style="width:40%;">Add</a>
                            <a href="TrainingCalender.jsp" class="btn btn-primary" style="width:50%;">Delete</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-info" style="width: 18rem;margin-top: 5vh;background:#c9d7e2;">
                        <img src="proff.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Trainers List</h5>
                            <p class="card-text">Enter this section to know about all Trainers.</p>
                            <a href="ShowTrainers.jsp" class="btn btn-primary opening" style="width:90%;">Open</a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-4">
                    <div class="card border-info" style="width: 18rem;margin-top: 5vh;background:#f2ebd7;">
                        <img src="proff.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">ADD/DELETE Trainer</h5>
                            <p class="card-text">Enter this section to add or remove a Trainer.</p>
                            <a href="AddTrainerForm.jsp" class="btn btn-primary opening" style="width:40%;">Add</a>
                            <a href="ShowTrainers.jsp" class="btn btn-primary" style="width:50%;">Delete</a>
                        </div>
                    </div>
                </div>
                <div class="col-8">
                    <div class="card border-info" style="width: 18rem;margin-top: 5vh;background:#c9d7e2;">
                        <img src="class.jpg"  width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">ADD Classroom</h5>
                            <p class="card-text">Enter this section to add or remove classroom.</p>
                            <a href="AddClassroomForm.jsp" class="btn btn-primary opening" style="width:40%;">Add</a>
                            <!--<a href="#" class="btn btn-primary" style="width:50%;">Delete</a>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% } catch (Exception e) {
                session.setAttribute("loginfirst", "yes");
                response.sendRedirect("login.jsp");
            }%>
    </body>
</html>
