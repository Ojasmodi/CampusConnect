<%-- 
    Document   : studentSection
    Created on : Mar 20, 2019, 9:14:56 PM
    Author     : OJAS MODI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="
              https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    </head>
    <body>
       
           
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
                <h1 class="display-4">Welcome to Student-Section</h1>
                <p class="lead">Click to explore things sections....</p>
            </div>
        </div>
         <% /*String s=session.getAttribute("name").toString();
            String s1=session.getAttribute("score").toString();
            out.println(s+" "+s1);
            session.setAttribute("x",s);
            out.print(session.getAttribute("x").toString());*/
            
         %>
        <div class="container">
            <div class="row justify-content-around">
                <div class="col-4">
                    <div class="card border-info" style="width: 18rem; margin-top: 1vh;margin-bottom: 4vh; background:#c9d7e2;">
                        <img src="cal.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Training Calender</h5>
                            <p class="card-text">Enter here to know the entire schedule of Trainings. </p>
                            <a href="alternateTrainingCalender.jsp" class="btn btn-primary opening" style="width:90%;">Open</a>
                        </div>
                    </div>
                </div>
                

                <div class="col-4">
                    <div class="card top-margin border border-info" style="width: 18rem; margin-top: 1vh;margin-bottom: 4vh; background:#c9d7e2;">
                        <img src="proff.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Learn Java</h5>
                            <p class="card-text">Learn the basic foundation, advance concepts of java.</p>
                            <a href="main.html" class="btn btn-primary">Click to explore...</a>
                        </div>
                    </div>
                </div>
                
                 <div class="col-4 ">
                    <div class="card top-margin border border-info" style="width: 18rem; margin-top: 1vh;margin-bottom: 3vh; background:#c9d7e2;">
                        <img src="stud.jpg"  width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Learn HTML</h5>
                            <p class="card-text">Learn the basic foundation, advance concepts of android.</p>
                            <a href="main.html" class="btn btn-primary">Click to explore...</a>
                        </div>
                    </div>
                </div>
            </div>
             <div class="row justify-content-around">
                 
                 <div class="col-4 ">
                    <div class="card top-margin border border-info" style="width: 18rem; margin-top: 1vh;margin-bottom: 3vh; background:#c9d7e2;">
                        <img src="stud.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Learn Mysql</h5>
                            <p class="card-text">Learn the basic foundation, advance concepts of C.</p>
                            <a href="main.html" class="btn btn-primary">Click to explore...</a>
                        </div>
                    </div>
                </div>
                <div class="col-4 ">
                    <div class="card top-margin border border-info" style="width: 18rem; margin-top: 1vh;margin-bottom: 3vh; background:#c9d7e2;">
                        <img src="stud.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Generate certificates</h5>
                            <p class="card-text">Click here to generate your Certificate.</p>
                            <a href="certi.jsp" class="btn btn-primary">Click to explore...</a>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card top-margin border border-info" style="width: 18rem; margin-top: 1vh;margin-bottom: 4vh; background:#c9d7e2;">
                        <img src="proff.jpg" width="276px" height="181px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Attempt quiz</h5>
                            <p class="card-text">Click here to give assessments and save your progress.</p>
                            <a href="demoquiz1.jsp" class="btn btn-primary">Click to explore...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

    </body>
</html>
