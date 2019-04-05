<%-- 
    Document   : AddTrainer
    Created on : Jul 23, 2018, 3:18:16 PM
    Author     : OJAS MODI
--%>

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
        <title>Add Trainer</title>
    </head>



    <body  >
        <%
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
                <% //try{
                    //String type=session.getAttribute("trainer").toString();
                //out.print("<a class='btn btn-danger' href='trainersection.jsp'>Go back</a> ");
                //}
                 //catch(Exception e) {
                out.print("<a class='btn btn-danger' href='adminsection.jsp'>Go back</a>");
                //}
                %>
                <h1 class="display-4">Trainer form-</h1>
            </div>
        </div>
                <div class='container' style="padding-bottom:5%;">
            <form  action="AddTrainer.jsp" method="post">
                <div class="form-group row justify-content-center">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Trainer Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="tname" placeholder="Name of the trainer">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Age:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="age" placeholder="Age (in years)">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Experience(years):</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="experience" placeholder="Years of Experience">
                    </div>
                </div>  

                <div class="form-group row justify-content-center">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Contact No.:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="contactno" placeholder="Enter valid contact number">
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
                        <input type="text" class="form-control" name="emailid" placeholder="Enter valid Email ID">
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
