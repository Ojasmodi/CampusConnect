<%-- 
    Document   : checkStudentLogin
    Created on : Feb 14, 2019, 12:10:06 PM
    Author     : OJAS MODI
--%>
<%@page import="com.mysql.jdbc.log.Log"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <%
      String username=request.getParameter("user");
             String password=request.getParameter("pass");
              Connection co=null;
              int score=0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            co=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizdb","root","root");
             PreparedStatement ps=co.prepareStatement("select* from quizregistration");
              ResultSet rs=ps.executeQuery();
            while(rs.next()) 
           {
             String name=rs.getString(2);
             if(name.equals(username))
             {
                 String password2=rs.getString(3);
                 if(password2.equals(password))
                 {
                     session.setAttribute("name",name);
                     session.setAttribute("score", rs.getInt(4));
                     request.getRequestDispatcher("studentSection.jsp").forward(request, response);
                 }
             }
           }
           // out.println("Invalid Details");
            
           request.getRequestDispatcher("studentLogin.jsp").include(request, response);
            out.println("<br/><div class='alert alert-danger text-center' role='alert'>Invalid details.</div>"); 
            
        }
        catch(Exception e)
        {
            out.println(e); 
        }
         %>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       
    </body>
</html>
