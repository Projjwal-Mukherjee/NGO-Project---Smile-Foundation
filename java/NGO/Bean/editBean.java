package NGO.Bean;
import java.io.Serializable;
public class editBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String url;
	private String username;
	private String email;
	
	
	//old values
	private String oldusername;
	private String oldemail;
	private String oldurl;
	
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUrl() {
		return url;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail() {
		return email;
	}
	
	//Old username
	public void setOldUsername(String oldusername) {
		this.oldusername = oldusername;
	}
	public String getOldUsername() {
		return oldusername;
	}
	
	public void setOldEmail(String oldemail) {
		this.oldemail = oldemail;
	}
	public String getOldEmail() {
		return oldemail;
	}

	public void setOldUrl(String oldurl) {
		this.oldurl = oldurl;
	}
	public String getOldUrl() {
		return oldurl;
	}
}
