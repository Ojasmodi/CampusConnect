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
public class ClassroomDAO {
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
   
   public static int save(Classroom p) throws ClassNotFoundException,SQLException
  {
       int status=0;
      Connection co=TrainerDAO.getConnection();
      PreparedStatement ps=co.prepareStatement("insert into classroom(cno,capacity,isAvailable)values(?,?,?)");
      ps.setInt(1,p.getCNo());
      ps.setInt(2, p.getCapacity());
      ps.setInt(3,1);
      status=ps.executeUpdate();
      co.close();
      return status;
 } 
   
   public static Classroom findClassroom(int id){
	Classroom p=new Classroom();
	
	try{
		Connection con=ClassroomDAO.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from classroom where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
                    p.setCId(rs.getInt(1));
		    p.setCNo(rs.getInt(2));
                    p.setCapacity(rs.getInt(3));
                    p.setIsAvailable(rs.getInt(4));
                   
		}
		con.close();
	}catch(Exception ex){ex.printStackTrace();}
	
	return p;
}

  
   public static int update(Classroom p){
	int status=0;
	try{
		Connection con=TrainerDAO.getConnection();
		PreparedStatement ps=con.prepareStatement("update classroom set isAvailable=0 where id=?");
		ps.setInt(1,p.getCId());
                status=ps.executeUpdate();
                con.close();
	}catch(Exception ex){ex.printStackTrace();}
	
	return status;
  }
   
   
   public static List<Classroom> getAllClassrooms() throws ClassNotFoundException,SQLException
   {
      List<Classroom> list=new ArrayList<>();
       try
      {
       Connection co=ClassroomDAO.getConnection();
      PreparedStatement ps=co.prepareStatement("select* from classroom");
      ResultSet rs=ps.executeQuery();
      while(rs.next())
      {
        Classroom p=new Classroom(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4));
        list.add(p);
      }
      co.close();
      }
      catch(Exception e)
      {
          System.out.println("Exception");
      }
       return list;
   }
}
