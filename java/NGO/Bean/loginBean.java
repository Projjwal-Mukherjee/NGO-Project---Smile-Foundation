package NGO.Bean;
import java.io.Serializable;
public class loginBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
}
