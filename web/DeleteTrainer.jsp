<%-- 
    Document   : DeleteTrainer
    Created on : Jul 24, 2018, 11:28:32 PM
    Author     : OJAS MODI
--%>

<%@page import="model.TrainerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		TrainerDAO.delete(id);%>
    <center><p>Record deleted successfully</p></center>
    <%
	request.getRequestDispatcher("ShowTrainers.jsp").include(request, response);
            %>
    </body>
</html>
