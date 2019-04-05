<%-- 
    Document   : home
    Created on : Feb 14, 2019, 11:41:37 AM
    Author     : OJAS MODI
--%>

<%@page import="com.mysql.jdbc.log.Log"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
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
      <button class="btn btn-primary"  onclick="window.location.href='logout.jsp'" type="button">Log Out</button>
    </div>
  </div>
</nav>

       <%! Connection co=null; 
       int ansid=0; %>

      <div>
     
         <h1 class="text-center text-white font-weight-bold text-uppercase bg-dark" >  Assignment Quiz Module  </h1><br>
      <div class="container "><br>
         <div class="container">
         
            
            <div class=" col-lg-12 text-center">
                <h3 class="text-uppercase text-warning"><% out.print(session.getAttribute("username")+" "); %> Welcome to Quiz-Module </h3>
            </div>
            <br>
            <div class="col-lg-8 d-block m-auto bg-light quizsetting ">
               <div class="card">
                  <p class="card-header text-center" > <% out.print(session.getAttribute("username")); %>, you have to select only one out of 4. Best of Luck <i class="fas fa-thumbs-up"></i>	 </p>
               </div>
               <br>
               <form action="checked.jsp" method="post">
                    <% 
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
              co=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizdb","root","root");
              //String[] numberOfElements = request.getParameterValues("quizcheck");
              //int count =numberOfElements.length;
                        }
                        catch(Exception e)
                        {
                           out.print("Exception in home"+e) ;
                        }
                         for(int i=1;i<6;i++){
                     int l = 1;
                  
                      ansid = i;
                         PreparedStatement ps=co.prepareStatement("SELECT * FROM `questions` WHERE `q_id` =" +i);
                        ResultSet rs=ps.executeQuery();
                         while(rs.next()) 
                         {
                           %>
                  <br>
                  <div class="card">
                     <br>
                     <p class="card-header">  <% out.print(i+": "+rs.getString(2)); %> </p>
                    
                     <%
                         
                     PreparedStatement ps1=co.prepareStatement("SELECT * FROM `answers` WHERE `a_id` = "+i );
                        ResultSet rs1=ps1.executeQuery();
                         while(rs1.next()) 
                        {
                        	%>	
                           
                     <div class="card-block">
                        <input type="radio" name="quizcheck[<%=ansid%>]" id="<%= ansid%>" value="<%out.print(rs1.getInt(1)); %> %>" > <%out.print(rs1.getString(2)); %>

                        <br>
                     </div>
                     <%
                        
                        } } 
                        ansid = ansid + l;
                         }
                        
                     %>
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

