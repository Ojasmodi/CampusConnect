<%-- 
    Document   : EditTrainer
    Created on : Jul 24, 2018, 9:01:10 PM
    Author     : OJAS MODI
--%>

<%@page import="model.Trainer"%>
<%@page import="java.sql.Connection"%>
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
            
	   //String sid=request.getParameter("id");
           //int id=Integer.parseInt(sid);
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
		
		
		Trainer p=new Trainer();
		//p.setTId(id);
		p.setName(name);
                p.setAge(age);
                p.setJulyAvailability(julyavailable);
                p.setJuneAvailability(juneavailable);
                p.setMayAvailability(mayavailable);
		p.setExperience(experience);
                p.setMailId(emailId);
                p.setPhoneno(phoneno);
                p.setSkill1(javaskill);
                p.setSkill2(cskill);
                p.setSkill3(androidskill);
		
               try
               {
                   Connection co=TrainerDAO.getConnection();
                response.setContentType("text/html");
		int status=TrainerDAO.update(p);
		//System.out.println(status);
		if(status>0){
                    out.println("Record updated successfully!");
			request.getRequestDispatcher("ShowTrainers.jsp").include(request, response);
		}else{
			out.println("Sorry! unable to update record");
                        request.getRequestDispatcher("ShowTrainers.jsp").include(request, response);
		}
               }
               catch(Exception e)
               {
                   out.println(e);
               }
		out.close();
	
         %>
    </body>
</html>
