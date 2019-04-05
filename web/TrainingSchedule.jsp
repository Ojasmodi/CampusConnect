<%-- 
    Document   : TrainingSchedule
    Created on : Jul 24, 2018, 12:58:44 PM
    Author     : OJAS MODI
--%>


<%@page import="java.sql.Connection"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add TrainingSchedule</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body bgcolor="#AED6F1">
           <%
            int cno=Integer.parseInt(request.getParameter("cno"));
            String course=request.getParameter("course");
             String tname=request.getParameter("trainer");
              String monthOfProgram=request.getParameter("MOP");
              int noOfStudents=Integer.parseInt(request.getParameter("noOfStudents"));
              
             List<Trainer> listofTrainer=TrainerDAO.getAllTrainers();
             List<Classroom> listofClassroom=ClassroomDAO.getAllClassrooms();
             int capacity=0;
             int roomisavailable=0;
             
             for(Classroom c:listofClassroom)
             {
                 if(c.getCNo()==cno)
                 {
                     capacity=c.getCapacity();
                     roomisavailable=c.isIsAvailable();
                 }
             }
             String monthAvailability=null;
             String canteachCourse=null;
             for(Trainer t:listofTrainer)
             {
                 if(t.getName().equals(tname))
                 {
                     if(monthOfProgram.equals("May"))
                     monthAvailability=t.getMayAvailability();
                     else if(monthOfProgram.equals("June"))
                     monthAvailability=t.getJuneAvailability();
                     else
                     monthAvailability=t.getJulyAvailability();
                     
                     if(course.equals("Java"))
                     canteachCourse=t.getSkill1();
                     else if(course.equals("C"))
                     canteachCourse=t.getSkill2();
                     else
                     canteachCourse=t.getSkill3(); 
                     break;
                }
             }
             if(roomisavailable==0)
             {
                 out.println("<br/><div class='alert alert-danger text-center' role='alert'>Given room is not available.</div>");
                         request.getRequestDispatcher("TrainingScheduleForm.jsp").include(request, response);
                    
             }
             else if(noOfStudents>capacity)
                     {
                        // out.println("<center><b>Student capacity should be less than "+capacity+"</b></center><br>");
                         out.println("<br/><div class='alert alert-danger text-center' role='alert'>Student capacity should be less than "+capacity+"</div>");
                         request.getRequestDispatcher("TrainingScheduleForm.jsp").include(request, response);
                     }
             else if(monthAvailability.equals("No"))
             {
                 out.println("<br/><div class='alert alert-danger text-center' role='alert'>The trainer is not avilable in "+monthOfProgram+"</div>");
                 //out.println("<center><b>"++"</b></center><br>");
                 request.getRequestDispatcher("TrainingScheduleForm.jsp").include(request, response);
              }
             else if(canteachCourse.equals("No"))
             {
                  out.println("<br/><div class='alert alert-danger text-center' role='alert'>Trainer can not teach this skill</div>");
                 //out.println("<center><b></b></center><br>");
                 request.getRequestDispatcher("TrainingScheduleForm.jsp").include(request, response);
              }
             else
             {
                 int status=0,status1=0;
               try{
               
                 Connection co=TrainerDAO.getConnection();
                 response.setContentType("text/html");
                  for(Classroom c:listofClassroom)
                  {
                   if(c.getCNo()==cno)
                   {
                     c.setIsAvailable(0);
                     status=ClassroomDAO.update(c);
                   }
                  }
                  if(status>0)
                      out.println("<br/><div class='alert alert-success text-center' role='alert'>Classroom alloted successfully.</div>");
                      //out.println("<center><b></b></center><br>");
                  else
                      out.println("<br/><div class='alert alert-danger text-center' role='alert'>Room allotment failed.</div>");
                      
         
                 TrainingSchedule p=new TrainingSchedule(cno,course,tname,monthOfProgram,noOfStudents);
         
                 status1= TrainingScheduleDAO.save(p);
         
                if(status1>0)
                {
                 //out.println("<center><b></b><center>");
                  out.println("<br/><div class='alert alert-success text-center' role='alert'>Schedule successfully added.</div>");
                 request.getRequestDispatcher("TrainingScheduleForm.jsp").include(request, response);
                }
               else
                { 
                    out.println("<br/><div class='alert alert-success text-center' role='alert'>Unable to add Schedule.</div>");
                    //out.print("<center><b>");
                request.getRequestDispatcher("TrainingScheduleForm.jsp").include(request, response);
                }
               }
               
              catch(Exception e)
              {
              out.print(e);
              }
            }   
            %>
        
             <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       
    </body>
</html>
