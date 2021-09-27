package actors;

public class Admin extends User {

	public Admin(int userIDnumber, String fName, String lName, String dob, String address, String userType,
			String userName, String email) {
		super(userIDnumber, fName, lName, dob, address, userType, userName, email);
		// TODO Auto-generated constructor stub
	}
	
	
	public int getUserIDnumber() {
		return userIDnumber;
	}

	public String getfName() {
		return fName;
	}

	public String getlName() {
		return lName;
	}

	public String getDob() {
		return dob;
	}

	public String getAddress() {
		return Address;
	}

	public String getUserType() {
		return userType;
	}

	public String getUserName() {
		return userName;
	}

	public String getEmail() {
		return email;
	}

	
	

}
