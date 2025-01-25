package NGO.Bean;
import java.io.Serializable;

public class medicalSuppliesBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String fname, email, phno, address, medical_equipment_description;
	private boolean error = false;
	//setter
	public void setFullname(String fullname) {
		this.fname = fullname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setMedEquipment(String med) {
		this.medical_equipment_description = med;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	//getter
	public String getFullname() {
		return this.fname;
	}
	public String getEmail() {
		return this.email;
	}
	public String getPhno() {
		return this.phno;
	}
	public String getAddress() {
		return this.address;
	}
	public boolean getError() {
		return this.error;
	}
	public String getMedEquipment() {
		return this.medical_equipment_description;
	}
}
