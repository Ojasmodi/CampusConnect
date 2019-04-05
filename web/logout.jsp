<%-- 
    Document   : logout
    Created on : Feb 14, 2019, 11:42:23 PM
    Author     : OJAS MODI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <html>  
<body>  
 
 <% 
    
     response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
       session.invalidate();
       out.print("You are successfully logged out!");
        request.getRequestDispatcher("afterindex.html").include(request, response); 
response.getOutputStream().flush();
response.getOutputStream().close();
      
 %> 

</body>  
</html>  
    </body>
</html>
