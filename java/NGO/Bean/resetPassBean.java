package NGO.Bean;
import java.io.Serializable;
public class resetPassBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String email,password;
//	setter
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPass(String pass) {
		this.password = pass;
	}
//	getter
	public String getPass() {
		return this.password;
	}
	public String getEmail() {
		return this.email;
	}
}
