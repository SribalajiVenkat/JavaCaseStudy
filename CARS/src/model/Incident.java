package model;

public class Incident {
	
	private int incidentId;
	private String incidentType;
	private String incidentDate;
	private double latitude;
	private double longitude;
	private String description;
	private String status;
	private int victimId;
	private int suspectId;
	private int officerId;
	
	public Incident()
	{
		
	}
	
	public Incident(int incidentId, String incidentType, String incidentDate, double latitude, double longitude, String description,
			String status, int victimId, int suspectId, int officerId) {
		super();
		this.incidentId = incidentId;
		this.incidentType = incidentType;
		this.incidentDate = incidentDate;
		this.latitude = latitude;
		this.longitude=longitude;
		this.description = description;
		this.status = status;
		this.victimId = victimId;
		this.suspectId = suspectId;
		this.officerId = officerId;
	}

	public int getIncidentId() {
		return incidentId;
	}

	public void setIncidentId(int incidentId) {
		this.incidentId = incidentId;
	}

	public String getIncidentType() {
		return incidentType;
	}

	public void setIncidentType(String incidentType) {
		this.incidentType = incidentType;
	}

	public String getIncidentDate() {
		return incidentDate;
	}

	public void setIncidentDate(String incidentDate) {
		this.incidentDate = incidentDate;
	}

	public double getLatitude() { return latitude; }
	public void setLatitude(double latitude) { this.latitude = latitude; }

	public double getLongitude() { return longitude; }
	public void setLongitude(double longitude) { this.longitude = longitude; }

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getVictimId() {
		return victimId;
	}

	public void setVictimId(int victimId) {
		this.victimId = victimId;
	}

	public int getSuspectId() {
		return suspectId;
	}

	public void setSuspectId(int suspectId) {
		this.suspectId = suspectId;
	}

	public int getOfficerId() {
		return officerId;
	}

	public void setOfficerId(int officerId) {
		this.officerId = officerId;
	}

	@Override
	public String toString() {
		return "Incident [incidentId=" + incidentId + ", incidentType=" + incidentType + ", incidentDate="
				+ incidentDate + ", latitude=" + latitude +",longitude" + longitude +", description=" + description + ", status=" + status
				+ ", victimId=" + victimId + ", suspectId=" + suspectId + ", officerId=" + officerId + "]";
	}
	
	
}
