package actors;

import java.sql.*;


import hms.dbConn;

public class Doctor  {
	
//	
//	public Doctor(int userIDnumber, String fName, String lName, String dob, String address, String userType,
//			String userName, String email) {
//		super(userIDnumber, fName, lName, dob, address, userType, userName, email);
//		// TODO Auto-generated constructor stub
//	}


	private String specialization;

	public String getSpecialization() {
		return specialization;
	}


	public void createSpecialNotice(String title , String discription , int doctorID )
	{
		String sql = "";
		try {
			
			dbConn conn = new dbConn();
			Connection dbConnection = conn.returnConn();
			
			sql="insert into doctornotice (title,content,docid) values(?,?,?)";
			 PreparedStatement preparedStmt = dbConnection.prepareStatement(sql);
			 preparedStmt.setString(1,title);
			 preparedStmt.setString(2,discription);
			 preparedStmt.setInt(3,doctorID);

		      preparedStmt.execute();
		      dbConnection.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
}
