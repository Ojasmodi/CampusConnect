<%-- 
    Document   : alternateTrainingCalender
    Created on : Apr 1, 2019, 3:45:26 PM
    Author     : OJAS MODI
--%>

<%@page import="model.TrainingScheduleDAO"%>
<%@page import="model.TrainingSchedule"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <title>Training Calender</title>
    </head>
    <body>
          <%
            try {
                //String s = session.getAttribute("user").toString();
                //out.print(s);
        %>
        <%!int i = 1;%>
       
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
                <% 
                   //     out.print("<a class='btn btn-danger' href='trainersection.jsp'>Go back</a>");
                 %>
                <h1 class="display-4">Training-Calender</h1>

            </div>
        </div>
                
        <div class='container'>
            <% i = 1;
                try {
                    List<TrainingSchedule> listofSchedules = TrainingScheduleDAO.getAllSchedules();%>
            <table  class="table table-striped table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">ClassRoom No.</th>
                        <th scope="col">Course</th>
                        <th scope="col">Trainer name</th>
                        <th scope="col">Month of Program</th>
                        <th scope="col">Number of Students</th>
                    </tr>
                </thead>

                <% for (TrainingSchedule p : listofSchedules) {%>
                <tbody>
                    <tr>
                            <th scope="row"><%out.print(i);
                                i++;%></th>
                        <td><%=p.getCno()%></td>
                        <td><%=p.getCourse()%></td>
                        <td><%=p.getTrainer()%></td>
                        <td><%=p.getMonthOfProgram()%></td>
                        <td><%=p.getNoOfStudents()%></td>
                       
                    </tr>
                    <%}%>
                </tbody>
            </table>
            <%
                } catch (Exception e) {
                    System.out.println(e);
                }
            %>
        </div>
         <% } catch (Exception e) {
                session.setAttribute("loginfirst", "yes");
                response.sendRedirect("trainerLogin.jsp");
            }%>
      
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    </body>
</html>
