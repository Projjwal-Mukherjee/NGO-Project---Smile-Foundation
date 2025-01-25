package NGO.Bean;
import java.io.Serializable;
public class memPasswordEditBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private String password ,oldpassword;
	public void setNewPassword(String password) {
		this.password = password;
	}
	public String getNewPassword() {
		return this.password;
	}
	
	public void setOldPassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getOldPassword() {
		return this.oldpassword;
	}
}
