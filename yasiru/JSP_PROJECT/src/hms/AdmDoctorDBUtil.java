package hms;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdmDoctorDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<AdmDoctor> validate(String username) {
		
		ArrayList<AdmDoctor> doc = new ArrayList<>();
		
		try { 
		    conn = dbConn.returnConn();
		    stmt = conn.createStatement();
		    
			String sql = "select * from user where username='"+username+"'";	    
		    rs = stmt.executeQuery(sql);
		    
		    if(rs.next()) {
			String uid = rs.getString(1);
			String dusername = rs.getString(2);
			String password = rs.getString(3);
			String name = rs.getString(4);
			String lname = rs.getString(5);
			String type = rs.getString(6);
			String address = rs.getString(7);
			String birthday = rs.getString(8);
		//	String specialization = rs.getString(9);
			
			AdmDoctor d = new AdmDoctor(uid,username,password,name,lname,type,address,birthday);  //,specialization
			doc.add(d);
		    }
		    
		}
		catch(Exception e) {
		    e.printStackTrace();
		}
		
		return doc;
		
	    } 
									
	public static boolean insertDoctor(String username,String password,String name,String lname,String type,String address,String birthday) { //,String specialization
		
		boolean isSuccess = false;

		try
			{
			
			dbConn conn = new dbConn();
			Connection dbConnection = conn.returnConn();
			
			Statement stmt = (Statement) dbConnection.createStatement();
			
			String sql = "insert into user values(0,'"+username+"','"+password+"','"+name+"','"+lname+"','"+type+"','"+address+"','"+birthday+"')"; //,'"+specialization+"'
			int rs = stmt.executeUpdate(sql);
			
			
			
					
				if(rs > 0) {
					isSuccess = true;
				}	
				else {
					isSuccess = false;
				}
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return isSuccess;
			
			
	}
	
	public static boolean updatedoctor(String uid, String username,String password,String name,String lname,String type,String address,String birthday) { //,String specialization
		
		try
		{
		
		dbConn conn = new dbConn();
		Connection dbConnection = conn.returnConn();
		
		Statement stmt = (Statement) dbConnection.createStatement();                                  //,specialization='"+specialization+"'
		
		String sql = "update user set username='"+username+"',password='"+password+"',name='"+name+"',lname='"+lname+"',type='"+type+"',address='"+address+"',birthday='"+birthday+"'"
		+"where uid='"+uid+"'";
		
		int rs = stmt.executeUpdate(sql);
				
			if(rs > 0 ) {
				isSuccess = true;
			}	
			else {
				isSuccess = false;
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	

}
