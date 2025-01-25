package NGO.Bean;
import java.io.Serializable;
public class memEmailEditBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private String email ,oldemail;
	public void setNewEmail(String email) {
		this.email = email;
	}
	public String getNewEmail() {
		return this.email;
	}
	
	public void setOldEmail(String oldemail) {
		this.oldemail = oldemail;
	}
	public String getOldEmail() {
		return this.oldemail;
	}
}
