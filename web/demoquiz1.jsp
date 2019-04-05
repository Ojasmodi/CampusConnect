<%-- 
    Document   : demoquiz1.jsp
    Created on : Apr 3, 2019, 2:15:52 PM
    Author     : OJAS MODI
--%>

<%@page import="com.mysql.jdbc.log.Log"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*" session="true"%>
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
        <style type="text/css">
            .animateuse{
                animation: leelaanimate 0.5s infinite;
            }
            @keyframes leelaanimate{
                0% { color: red },
                10% { color: yellow },
                20%{ color: blue }
                40% {color: green },
                50% { color: pink }
                60% { color: orange },
                80% {  color: black },
                100% {  color: brown }
            }
        </style>
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

        <div>

            <h1 class="text-center text-white font-weight-bold text-uppercase bg-dark" >  Assignment Quiz Module  </h1><br>
            <div class="container "><br>
                <div class="container">


                    <div class=" col-lg-12 text-center">
                        <h3 class="text-uppercase text-warning">Welcome to Quiz-Module </h3>
                    </div>
                    
                    <br>
                    <div class="col-lg-8 d-block m-auto bg-light quizsetting ">
                        <div class="card">
                            <p class="card-header text-center" > 
                                  You have to select only one out of 4. Best of Luck <i class="fas fa-thumbs-up"></i>	 </p>
                        </div>
                        <br>
                        <form action="quizCheck.jsp" method="post">
                            <br>
                            <div class="card">
                                <br>
                                <p class="card-header">1. Which of these is not a bitwise operator? </p>
                                <div class="card-block">
                                    <input type="radio" name="q1" value="option1" > &<br>
                                    <input type="radio" name="q1" value="option2" > &=<br>
                                    <input type="radio" name="q1" value="option3" > |=<br>
                                    <input type="radio" name="q1" value="option4" > <=<br>
                                </div>
                            </div>
                            <br>
                           <div class="card">
                                <br>
                                <p class="card-header">2. Which of these operators is used to allocate memory to array variable in Java?</p>
                                <div class="card-block">
                                    <input type="radio" name="q2" value="option1" > new<br>
                                    <input type="radio" name="q2" value="option2" > malloc<br>
                                    <input type="radio" name="q2" value="option3" > newmalloc<br>
                                    <input type="radio" name="q2" value="option4" > alloc<br>
                                </div>
                            </div>
                            <br>
                            <div class="card">
                                <br>
                                <p class="card-header">3. Which component is used to compile, debug and execute java program? </p>
                                <div class="card-block">
                                    <input type="radio" name="q3" value="option1" > JVM<br>
                                    <input type="radio" name="q3" value="option2" > JIT<br>
                                    <input type="radio" name="q3" value="option3" > JDK<br>
                                    <input type="radio" name="q3" value="option4" > JRE<br>
                                </div>
                            </div>
                            <br>
                            <div class="card">
                                <br>
                                <p class="card-header">4. What is the extension of java code files?</p>
                                <div class="card-block">
                                    <input type="radio" name="q4" value="option1" > .class<br>
                                    <input type="radio" name="q4" value="option2" > .java<br>
                                    <input type="radio" name="q4" value="option3" > .text<br>
                                    <input type="radio" name="q4" value="option4" > .js<br>
                                </div>
                            </div>
                            <br>
                            <div class="card">
                                <br>
                                <p class="card-header">5. Which statement is true about java?</p>
                                <div class="card-block">
                                    <input type="radio" name="q5" value="option1" > Platform independent programming language<br>
                                    <input type="radio" name="q5" value="option2" > Platform dependent programming language<br>
                                    <input type="radio" name="q5" value="option3" > Code dependent programming language<br>
                                    <input type="radio" name="q5" value="option4" > Sequence dependent programming language<br>
                                </div>
                            </div>
                            <br>
                            <input type="submit" name="submit" Value="Submit" class="btn btn-success m-auto d-block" /> <br>
                        </form>
                        <p id="letc"></p>
                    </div>
                    <br>
                    <br>
                </div>
                <br>
                <footer>
                    <h5 class="text-center"> Stay calm and do carefully. </h5> 
                </footer>
            </div>

    </body>
</html>

