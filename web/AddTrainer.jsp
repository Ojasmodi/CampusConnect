<%-- 
    Document   : AddTrainer
    Created on : Jul 18, 2018, 1:47:06 PM
    Author     : OJAS MODI
--%>

<%@page import="model.TrainerDAO"%>
<%@page import="model.Trainer"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Trainer</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
       
        <%
             String name=request.getParameter("tname");
            int age=Integer.parseInt(request.getParameter("age"));
          
             String javaskill= request.getParameter("javaskill");
             String cskill= request.getParameter("cskill");
            String androidskill= request.getParameter("androidskill");
             
             String mayavailable= request.getParameter("may");
             String juneavailable= request.getParameter("june");
            String julyavailable= request.getParameter("july");
            
            long phoneno=(long)Integer.parseInt(request.getParameter("contactno"));
            //request.getRequestDispatcher("AddTrainerForm.jsp").forward(request,response);
            String emailId=request.getParameter("emailid");
             
            int experience=Integer.parseInt(request.getParameter("experience"));
             try{
               //out.println("one");
            Connection co=TrainerDAO.getConnection();
            response.setContentType("text/html");
         
             Trainer p=new Trainer(name,age,phoneno,emailId,javaskill,cskill,androidskill,experience,mayavailable,juneavailable,julyavailable);
          //out.println("two"); 
          int status= TrainerDAO.save(p);
          //out.println("three");
          if(status>0)
          {
            out.println("<br/><div class='alert alert-success text-center' role='alert'>Trainer added successfully.</div>");
            request.getRequestDispatcher("AddTrainerForm.jsp").include(request, response);
          }
          else
            out.println("<br/><div class='alert alert-danger text-center' role='alert'>Unable to add Trainer.</div>");
          }
         catch(Exception e)
         {
             
           out.print(e);
         }
         %>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       
    </body>
</html>
