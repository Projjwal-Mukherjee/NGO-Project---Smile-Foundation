package NGO.Bean;
import java.io.Serializable;
public class foodClothBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String fullname, email, phno, address;
	private boolean error = false;
	//setter
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	//getter
	public String getFullname() {
		return this.fullname;
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
}
