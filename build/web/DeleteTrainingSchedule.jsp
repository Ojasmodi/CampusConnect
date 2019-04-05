<%-- 
    Document   : DeleteTraingSchedule
    Created on : Jul 25, 2018, 1:15:07 AM
    Author     : OJAS MODI
--%>

<%@page import="model.TrainingScheduleDAO"%>
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
		TrainingScheduleDAO.delete(id);%>
    <center><p>Schedule deleted successfully</p></center>
    <%
	request.getRequestDispatcher("TrainingCalender.jsp").include(request, response);
            %>
    </body>
</html>
