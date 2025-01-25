package NGO.Bean;
import java.io.Serializable;
public class medicalHelpBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String organization_name, organization_type, address, equipment_require, description, requester_name, requester_email, requester_phno;
	private boolean error;
	//	setter
	public void setOrgname(String orgname) {
		this.organization_name = orgname;
	}
	public void setOrgtype(String orgtype) {
		this.organization_type= orgtype;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setEquipment(String equipment_require) {
		this.equipment_require = equipment_require;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setName(String name) {
		this.requester_name = name;
	}
	public void setEmail(String email) {
		this.requester_email = email;
	}
	public void setPhno(String phno) {
		this.requester_phno= phno;
	}
	public void setError(boolean error) {
		this.error = error;
	}
//	getter
	public String getOrgname() {
		return this.organization_name;
	}
	public String getOrgtype() {
		return this.organization_type;
	}
	public String getAddress() {
		return this.address;
	}
	public String getEquipment() {
		return this.equipment_require;
	}
	public String getDescription() {
		return this.description;
	}
	public String getName() {
		return this.requester_name;
	}
	public String getEmail() {
		return this.requester_email;
	}
	public String getPhno() {
		return this.requester_phno;
	}
	public boolean getError() {
		return this.error;
	}
}
