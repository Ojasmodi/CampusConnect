<%-- 
    Document   : UpdateTrainer
    Created on : Jul 24, 2018, 7:58:03 PM
    Author     : OJAS MODI
--%>

<%@page import="model.Trainer"%>
<%@page import="model.TrainerDAO"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"  
              integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Trainer</title>
    </head>
    <body>
        <%
           // response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
           // response.setHeader("Pragma", "no-cache");
            //response.setHeader("Expires", "0");
            try {
               // String s = session.getAttribute("user").toString();
                //out.print(s);
        %>
        <%
            response.setContentType("text/html");
            int tid = Integer.parseInt(request.getParameter("id"));
            Trainer p = TrainerDAO.findTrainer(tid);
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
             
                <h1 class="display-4">Update Trainer-</h1>
            </div>
        </div>
        <div class='container'>
            <form  action="EditTrainer.jsp" method="post">
                <div class="form-group row justify-content-center">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Trainer Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="tname" value='<%=p.getName()%>'>
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Age:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="age" value="<%=p.getAge()%>" 
                               >
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Experience(years):</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="experience"  value="<%=p.getExperience()%>"
                               >
                    </div>
                </div>  

                <div class="form-group row justify-content-center">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Contact No.:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="contactno" value="<%=p.getPhoneno()%>"
                               >
                    </div>
                </div>  


                <div class="form-group row ">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Java:</label> 
                    <div class="custom-control custom-radio custom-control-inline col-sm-10-form-label">
                        <input type="radio" id="customRadioInline1" name="javaskill" value="Yes" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline1">Yes</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadioInline2" name="javaskill" checked="checked" value="No" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline2">No</label>
                    </div>
                </div>

                <div class="form-group row ">
                    <label for="inputPassword6" class="col-sm-2 col-form-label">C:</label> 
                    <div class="custom-control custom-radio custom-control-inline col-sm-10-form-label">
                        <input type="radio" id="customRadioInline3" name="cskill" value="Yes" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline3">Yes</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadioInline4" name="cskill" checked="checked" value="No" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline4">No</label>
                    </div>
                </div>    
                <div class="form-group row ">
                    <label for="inputPassword7" class="col-sm-2 col-form-label">Android:</label> 
                    <div class="custom-control custom-radio custom-control-inline col-sm-10-form-label">
                        <input type="radio" id="customRadioInline5" name="androidskill" value="Yes" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline5">Yes</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadioInline6" name="androidskill" checked="checked" value="No" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline6">No</label>
                    </div>
                </div> 

                <div class="form-group row justify-content-center">
                    <label for="inputPassword8" class="col-sm-2 col-form-label">Email-Id:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="emailid"  value="<%=p.getMailId()%>">
                    </div>
                </div>  

                <div class="form-group row ">
                    <label for="inputPassword9" class="col-sm-2 col-form-label">May-Available:</label> 
                    <div class="custom-control custom-radio custom-control-inline col-sm-10-form-label">
                        <input type="radio" id="customRadioInline7"  name="may" value="Yes" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline7">Yes</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadioInline8"  name="may" checked="checked" value="No" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline8">No</label>
                    </div>
                </div>

                <div class="form-group row ">
                    <label for="inputPassword10" class="col-sm-2 col-form-label">June-Available:</label> 
                    <div class="custom-control custom-radio custom-control-inline col-sm-10-form-label">
                        <input type="radio" id="customRadioInline9" name="june" value="Yes" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline9">Yes</label>
                    </div>

                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadioInline10"  name="june" checked="checked" value="No" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline10">No</label>
                    </div>
                </div>    
                <div class="form-group row ">
                    <label for="inputPassword11" class="col-sm-2 col-form-label">July-Available:</label> 
                    <div class="custom-control custom-radio custom-control-inline col-sm-10-form-label">
                        <input type="radio" id="customRadioInline11"  name="july" value="Yes" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline11">Yes</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadioInline12"  name="july" checked="checked" value="No" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline12">No</label>
                    </div>
                </div>                     

                <div class="form-group row justify-content-center">
                    <div class="col-1">
                        <button type="submit" class="btn btn-primary">Update</button>

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
