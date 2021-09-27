package hms;

public class NuPrescription {
	private int presID;
	private String presDetails;
	private String patientName;
	
	public NuPrescription(int presID, String presDetails, String patientName) {
		super();
		this.presID = presID;
		this.presDetails = presDetails;
		this.patientName = patientName;
		
		
	}

	public int getPresID() {
		return presID;
	}

	public void setPresID(int presID) {
		this.presID = presID;
	}

	public String getPresDetails() {
		return presDetails;
	}

	public void setPresDetails(String presDetails) {
		this.presDetails = presDetails;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	
}
