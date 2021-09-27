package actors;

public class Patient {
	
	protected int userIDnumber=0;
	protected String fName=""; 
	protected String lName=""; 
	protected String dob="";
	protected String Address=""; 
	protected String specialNote="";
	protected String tpNumber="";
	
	public Patient(int userIDnumber, String fName, String lName, String dob, String address, String specialNote,
			String tpNumber) {
		super();
		this.userIDnumber = userIDnumber;
		this.fName = fName;
		this.lName = lName;
		this.dob = dob;
		Address = address;
		this.specialNote = specialNote;
		this.tpNumber = tpNumber;
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

	public String getSpecialNote() {
		return specialNote;
	}

	public String getTpNumber() {
		return tpNumber;
	}



	
	
}
