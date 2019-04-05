<%-- 
    Document   : checked
    Created on : Feb 14, 2019, 10:02:14 AM
    Author     : OJAS MODI
--%>

<%@page import="com.mysql.jdbc.log.Log"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title></title>
      <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
	.animateuse{
			animation: leelaanimate 0.5s infinite;
		}

@keyframes leelaanimate{
			0% { color: red },
			10% { color: yellow },
			20%{ color: blue }
			40% {color: green },
			50% { color: pink }
			60% { color: orange },
			80% {  color: black },
			100% {  color: brown }
		}
</style>

   </head>
   <body>
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">
    <img src="ccImage.png" width="30" height="30" class="d-inline-block align-top" alt="">
    Campus Connect
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarText">
    
    <div class="d-flex flex-row-reverse">
      <button class="btn btn-primary"  onclick="window.location.href='logout.jsp'" type="button">Log Out</button>
    </div>
  </div>
</nav>
       <%! Connection co=null; 
       int result=0;
       int count=0; %>
     <div class="container text-center" >
     	<br><br>
    	<h1 class="text-center text-success text-uppercase animateuse" > Campus Connect Quiz World</h1>
    	<br><br><br><br>
      <table class="table text-center table-bordered table-hover">
      	<tr>
      		<th colspan="2" class="bg-dark"> <h1 class="text-white"> Results </h1></th>
      		
      	</tr>
      	<tr>
		      	<td>
		      		Questions Attempted
		      	</td>

                        <% 
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
               co=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizdb","root","root");
              String[] numberOfElements = request.getParameterValues("quizcheck");
                count =numberOfElements.length;
                        }
                        catch(Exception e)
                        {
                           out.print(e+" "+count); 
                        }
                        %>
	        

        	<td>
                    <% out.print("Out of 5, You have attempt "+count+" options.");%>
              </td>
        
          	
            <%
              try {
                  String[] selected = request.getParameterValues("quizcheck");
              
              PreparedStatement ps=co.prepareStatement("select a_id from questions");
              ResultSet rs=ps.executeQuery();
              int i=1;
            while(rs.next()) 
            {
                
                if(selected[i]==rs.getString(3))
                {
                    result++;
                }
                i++;
            }
            }
            catch(Exception e)
             {
             out.print(e);
             }
            %>
            
            		<tr>
    			<td>
    				Your Total score
    			</td>
    			<td colspan="2">
	    	<%
	            out.print("Your score is "+result+".");
	           
	        %>
	          </td>
            </tr>

     </table>

      	<a href="logout.jsp" class="btn btn-success"> LOGOUT </a>
      </div>
   </body>
</html>


