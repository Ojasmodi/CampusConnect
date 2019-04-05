/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author OJAS MODI
 */
public class TrainingScheduleDAO {
    
     public static Connection getConnection()
    {
        Connection co=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            co=DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusConnect","root","root");
        }
        catch(Exception e)
        {
            System.out.println("Exception"); 
        }
        return co;     
    }
   
   public static int save(TrainingSchedule p) throws ClassNotFoundException,SQLException
  {
       int status=0;
      Connection co=TrainingScheduleDAO.getConnection();
      PreparedStatement ps=co.prepareStatement("insert into trainingschedule values(?,?,?,?,?)");
      ps.setInt(1, p.getCno());
      ps.setString(2, p.getCourse());
      ps.setString(3,p.getTrainer());
      ps.setString(4,p.getMonthOfProgram());
      ps.setInt(5,p.getNoOfStudents());
      
      status=ps.executeUpdate();
      co.close();
      return status;
   }
   
   public static int delete(int id){
	int status=0;
	try{
		Connection con=TrainerDAO.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from trainingschedule where classno=?");
		ps.setInt(1,id);
		status=ps.executeUpdate();
		
		con.close();
	}catch(Exception e){e.printStackTrace();}
	
	return status;
}
   
   public static List<TrainingSchedule> getAllSchedules() throws ClassNotFoundException,SQLException
   {
      List<TrainingSchedule> list=new ArrayList<>();
       try
      {
       Connection co=TrainingScheduleDAO.getConnection();
      PreparedStatement ps=co.prepareStatement("select* from trainingschedule");
      ResultSet rs=ps.executeQuery();
      while(rs.next())
      {
           
           TrainingSchedule p=new TrainingSchedule(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
           list.add(p);
      }
      co.close();
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
       return list;
   }

   
}
