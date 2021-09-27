package actors;

public class Nurse extends User {

	public Nurse(int userIDnumber, String fName, String lName, String dob, String address, String userType,
			String userName, String email) {
		super(userIDnumber, fName, lName, dob, address, userType, userName, email);
		// TODO Auto-generated constructor stub
	}
	
	private String rank;

	public String getRank() {
		return rank;
	}

	

}
