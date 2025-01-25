package NGO.Bean;
import java.io.Serializable;
public class adminBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id, name, email, phno, password;
//	setter
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setId(String id) {
		this.id = id;
	}
//	getter
	public String getId() {
		return this.id;
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
	public String getPassword() {
		return this.password;
	}
}
