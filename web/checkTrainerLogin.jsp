<%-- 
    Document   : checkTrainerLogin
    Created on : Mar 22, 2019, 12:45:06 AM
    Author     : OJAS MODI
--%>

<%@page import="com.mysql.jdbc.log.Log"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
       
            
    </head>
    <body>
        <%
            String username=request.getParameter("user");
            //out.println(username);
             String password=request.getParameter("pass");
             //out.println(password);
              Connection co=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            co=DriverManager.getConnection("jdbc:mysql://localhost:3306/campusconnect","root","root");
             PreparedStatement ps=co.prepareStatement("select* from trainerregistration");
              ResultSet rs=ps.executeQuery();
            while(rs.next()) 
           {
             String name=rs.getString(2);
             if(name.equals(username))
             {
                 String password2=rs.getString(3);
                 if(password2.equals(password))
                 {
                     session.setAttribute("user", name);
                     session.setAttribute("trainer","trainer");
                     request.getRequestDispatcher("trainersection.jsp").forward(request, response);
                     //out.print(name+" "+password2);
                 }
             }
           }
            out.println("Invalid Details");
            
           request.getRequestDispatcher("trainerLogin.jsp").forward(request, response);
            
        }
        catch(Exception e)
        {
            out.println("Exception"); 
        }
            %>
    </body>
</html>

