package NGO.Bean;
import java.io.Serializable;
public class signupBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String emailid;
	private String password;
	
	public void setUsername(String username) {
		this.username = username;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	public String getEmailid() {
		return emailid;
	}
	public String getPassword() {
		return password;
	}
}
