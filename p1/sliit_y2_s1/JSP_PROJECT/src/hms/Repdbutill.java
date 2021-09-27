package hms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

//create db connection in this class
public class Repdbutill  {
	
//create method to connect parameters with db
//insert details to db via insertdetails method
//return value to roominsertservlet class
	
	public static boolean Insertroomdetails(String RoomNo,String Patientname,String Patientid,String Availability,String Date) {
		//variable for db connect success or not
		boolean added=false;
		
		//cretae db connection 
		//use interface
		String url="jdbc:mysql://localhost/HMS";
		String user="root";
	    String password="";
		//catch error to void system crash 
	    //if error happen print printStackTrace
	    try {//connection
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection con =DriverManager.getConnection(url, user, password);
	    	Statement stmt=con.createStatement();
	    	//pass those variables to bd via sql query
	    	String sql="insert into room values(0,'"+Availability+"','"+Patientid+"','"+Patientname+"','"+Date+"','"+RoomNo+"')";
	    	//execute given sql via method 
	    	int addroom=stmt.executeUpdate(sql);
	    	//check addroom variable value 
	    	if(addroom >0) {
	    		added=true;
	    	}else {
	    		added=false;
	    	}
	    }catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    
	    
	    
		return added;
	}

}
