package NGO.Bean;
import java.io.Serializable;
public class amountDonateBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String fullname, email, phno, transaction_id;
//	setter
	public void setName(String fullname) {
		this.fullname = fullname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setTransactionID(String tid) {
		this.transaction_id = tid;
	}
//	getter
	public String getName() {
		return this.fullname;
	}
	public String getEmail() {
		return this.email;
	}
	public String getPhno() {
		return this.phno;
	}
	public String getTransactionID() {
		return this.transaction_id;
	}
}
