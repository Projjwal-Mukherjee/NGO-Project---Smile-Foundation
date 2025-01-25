package NGO.Bean;
import java.io.Serializable;
public class contactUsBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String fullname;
	private String email;
	private String phno;
	private String message;
	
	//setter
	public void setFullname(String fname,String lname) {
		this.fullname = fname+" "+lname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setMessage(String message) {
		this.message = message;
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
	public String getMessage() {
		return this.message;
	}
}
