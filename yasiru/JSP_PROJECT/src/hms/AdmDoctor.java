package hms;

public class AdmDoctor {
	
	private String uid;
	private String username;
	private String password;
	private String name;
	private String lname;
	private String type;
	private String address;
	private String birthday;
	//private String specialization;
	
	public AdmDoctor(String uid, String username, String password, String name, String lname, String type, String address,
			String birthday)  //, String specialization
	{
		
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.lname = lname;
		this.type = type;
		this.address = address;
		this.birthday = birthday;
		//this.specialization = specialization;
	}

	public String getUid() {
		return uid;
	}
	
	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public String getName() {
		return name;
	}

	public String getLname() {
		return lname;
	}

	public String getType() {
		return type;
	}

	public String getAddress() {
		return address;
	}

	public String getBirthday() {
		return birthday;
	}

  /*	public String getSpecialization() {
		return specialization;
	} */

}
