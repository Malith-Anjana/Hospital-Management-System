package actors;

public abstract class User {
	protected int userIDnumber=0;
	protected String fName=""; 
	protected String lName=""; 
	protected String dob="";
	protected String Address=""; 
	protected String userType=""; 
	protected String userName=""; 
	protected String email=""; 
	
	public User(int userIDnumber, String fName, String lName, String dob, String address, String userType,
			String userName, String email) {
		super();
		this.userIDnumber = userIDnumber;
		this.fName = fName;
		this.lName = lName;
		this.dob = dob;
		Address = address;
		this.userType = userType;
		this.userName = userName;
		this.email = email;
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
