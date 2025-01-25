package NGO.Bean;
import java.io.Serializable;
public class disasterHelpBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String location, date, address, description, name, email, phno;
	private boolean error;
	//setter
	public void setLocation(String location) {
		this.location = location;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	//getter
	public String getLocation() {
		return this.location;
	}
	public String getDate() {
		return this.date;
	}
	public String getAddress() {
		return this.address;
	}
	public String getDescription() {
		return this.description;
	}
	public String getName() {
		return this.name;
	}
	public String getEmail() {
		return this.email;
	}
	public String getPhno() {
		return this.phno;
	}
	public boolean getError() {
		return this.error;
	}
}
