package NGO.Bean;
import java.io.Serializable;
public class womenBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String name, age, address, relationship, complain, described_issue, complainer_name, emailid, ph_no;
	private boolean error;
	//setter
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setRelation(String relationship) {
		this.relationship = relationship;
	}
	public void setComplain(String complain) {
		this.complain = complain;
	}
	public void setIssue(String issue) {
		this.described_issue = issue;
	}public void setComplainer(String Complainer) {
		this.complainer_name = Complainer;
	}
	public void setEmail(String emailid) {
		this.emailid = emailid;
	}
	public void setPhno(String phno) {
		this.ph_no = phno;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	
//	getter
	public String getName() {
		return this.name;
	}
	public String getAge() {
		return this.age;
	}
	public String getAddress() {
		return this.address;
	}
	public String getRelation() {
		return this.relationship;
	}
	public String getComplain() {
		return this.complain;
	}
	public String getIssue() {
		return this.described_issue;
	}public String getComplainer() {
		return this.complainer_name;
	}
	public String getEmail() {
		return this.emailid;
	}
	public String getPhno() {
		return this.ph_no;
	}
	public boolean getError() {
		return this.error;
	}
}
