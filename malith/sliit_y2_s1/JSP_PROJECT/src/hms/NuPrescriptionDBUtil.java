package hms;
import java.lang.Exception;
import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.sql.ResultSet; 

public class NuPrescriptionDBUtil { 
	
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<NuPrescription> validate(){
		
		 ArrayList<NuPrescription> pres = new ArrayList<>();
	
		try {
			conn = dbConn.returnConn();
			stmt = conn.createStatement();
			
			String sql = "select * from nuprescription";
			rs = stmt.executeQuery(sql);
			
			//Process result set
			while(rs.next()) {
				
				//retrive data from result set row
				int preId = rs.getInt(1);
				String patientName = rs.getString(2);
				String detail = rs.getString(3);
				
				//Create new prescription
				NuPrescription p = new NuPrescription(preId,detail,patientName);
				
				//Add it to the list 
				pres.add(p);
			}
			
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return pres;
	}

}
