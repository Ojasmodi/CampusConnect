<%-- 
    Document   : trainerRegistration
    Created on : Mar 22, 2019, 12:41:47 AM
    Author     : OJAS MODI
--%>

<%@page import="com.mysql.jdbc.log.Log"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <%
            String username=request.getParameter("user");
             String password=request.getParameter("pass");
              Connection co=null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            co=DriverManager.getConnection("jdbc:mysql://localhost:3306/campusconnect","root","root");
             PreparedStatement ps=co.prepareStatement("insert into trainerregistration(user,pass)values(?,?)");
             ps.setString(1,username);
             ps.setString(2,password);
             
             ps.executeUpdate();
             // if(rs>0)
             request.getRequestDispatcher("trainerLogin.jsp").include(request, response);
             //response.sendRedirect("");
                     
                 
             out.println("<br/><div class='alert alert-success text-center' role='alert'>Registration successful. Please login to continue.</div>");
            
           
            
        }
        catch(Exception e)
        {
            request.getRequestDispatcher("trainerLogin.jsp").include(request, response);
            out.println("<br/><div class='alert alert-danger text-center' role='alert'>Some error occured.</div>"); 
        }
            %>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       
    </body>
</html>
