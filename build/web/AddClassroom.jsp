<%-- 
    Document   : AddClassroom
    Created on : Jul 23, 2018, 9:24:22 PM
    Author     : OJAS MODI
--%>

<%@page import="model.ClassroomDAO"%>
<%@page import="java.sql.*"%>
<%@page import="model.Classroom"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Classroom</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <% 
          int classroomno=Integer.parseInt(request.getParameter("cno"));
          int capacity=Integer.parseInt(request.getParameter("capacity"));
            try{
               //out.println("one");
            Connection co=ClassroomDAO.getConnection();
            response.setContentType("text/html");
         
             Classroom p=new Classroom(classroomno,capacity);
          //out.println("two"); 
          int status= ClassroomDAO.save(p);
          //out.println("three");
          if(status>0)
          {
            out.println("<br/><div class='alert alert-success text-center' role='alert'>Classroom successfully added.</div>");
            request.getRequestDispatcher("AddClassroomForm.jsp").include(request, response);
          }
          else
            out.println("<br/><div class='alert alert-success text-center' role='alert'>Unable to add classroom.</div>");
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
