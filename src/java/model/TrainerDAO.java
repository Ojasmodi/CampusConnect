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
public class TrainerDAO {
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
   
   public static int save(Trainer p) throws ClassNotFoundException,SQLException
  {
       int status=0;
      Connection co=TrainerDAO.getConnection();
      PreparedStatement ps=co.prepareStatement("insert into trainer(name,age,phoneno,emailid,javaskill,cskill,androidskill,experience,mayavailable,juneavailable,julyavailable) values(?,?,?,?,?,?,?,?,?,?,?)");
      ps.setString(1, p.getName());
      ps.setInt(2, p.getAge());
      ps.setLong(3,p.getPhoneno());
      ps.setString(4,p.getMailId());
      ps.setString(5,p.getSkill1());
      ps.setString(6,p.getSkill2());
      ps.setString(7,p.getSkill3());
      ps.setInt(8,p.getExperience());
      ps.setString(9,p.getMayAvailability());
      ps.setString(10, p.getJuneAvailability());
      ps.setString(11, p.getJulyAvailability());
      status=ps.executeUpdate();
      co.close();
      return status;
   }
   

   public static int update(Trainer p){
	int status=0;
	try{
		Connection con=TrainerDAO.getConnection();
		PreparedStatement ps=con.prepareStatement("update trainer set name=?,age=?,phoneno=?,emailid=?,javaskill=?,cskill=?,androidskill=?,experience=?,mayavailable=?,juneavailable=?,julyavailable=? where id=?");
		
                ps.setString(1, p.getName());
      ps.setInt(2, p.getAge());
      ps.setLong(3,p.getPhoneno());
      ps.setString(4,p.getMailId());
      ps.setString(5,p.getSkill1());
      ps.setString(6,p.getSkill2());
      ps.setString(7,p.getSkill3());
      ps.setInt(8,p.getExperience());
      ps.setString(9,p.getMayAvailability());
      ps.setString(10, p.getJuneAvailability());
      ps.setString(11, p.getJulyAvailability());
      ps.setInt(12,p.getTId());
      status=ps.executeUpdate();
		
		con.close();
	}catch(Exception ex){ex.printStackTrace();}
	
	return status;
  }
   
public static int delete(int id){
	int status=0;
	try{
		Connection con=TrainerDAO.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from trainer where id=?");
		ps.setInt(1,id);
		status=ps.executeUpdate();
               PreparedStatement pt=con.prepareStatement("update  classroom set isavailable=1 where id=?");
               pt.setInt(1,id);
               status=pt.executeUpdate();
		con.close();
	}catch(Exception e){e.printStackTrace();}
	
	return status;
}
public static Trainer findTrainer(int id){
	Trainer p=new Trainer();
	
	try{
		Connection con=TrainerDAO.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from trainer where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
                    p.setTId(rs.getInt(1));
		    p.setName(rs.getString(2));
                    p.setAge(rs.getInt(3));
                    p.setPhoneno(rs.getInt(4));
                    p.setMailId(rs.getString(5));
                    p.setJulyAvailability(rs.getString(10));
                    p.setJuneAvailability(rs.getString(11));
                    p.setMayAvailability(rs.getString(12));
		    p.setExperience(rs.getInt(9));
                    p.setSkill1(rs.getString(6));
                    p.setSkill2(rs.getString(7));
                    p.setSkill3(rs.getString(8));
			
		}
		con.close();
	}catch(Exception ex){ex.printStackTrace();}
	
	return p;
}

  
 
 public static List<Trainer> getAllTrainers() throws ClassNotFoundException,SQLException
   {
      List<Trainer> list=new ArrayList<>();
       try
      {
       Connection co=TrainerDAO.getConnection();
      PreparedStatement ps=co.prepareStatement("select* from trainer");
      ResultSet rs=ps.executeQuery();
      while(rs.next())
      {
           
           Trainer p=new Trainer(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getLong(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12));
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
