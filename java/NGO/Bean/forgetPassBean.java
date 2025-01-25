package NGO.Bean;
import java.io.Serializable;
public class forgetPassBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String email,OTP;
	
//	setter
	public void setEmail(String email) {
		this.email = email;
	}
	public void setOTP(String otp) {
		this.OTP = otp;
	}
//	getter
	public String getEmail() {
		return this.email;
	}
	public String getOTP() {
		return this.OTP;
	}
}
