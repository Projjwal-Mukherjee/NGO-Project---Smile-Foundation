package NGO.Bean;
import java.io.Serializable;
public class educationHelpBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String name, age, address, gender, relationship, description, reporter_name, email, phno;
	private boolean error;
	//	setter
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public void setAddress(String add) {
		this.address = add;
	}
	public void setGender(String gen) {
		this.gender = gen;
	}
	public void setRelationship(String rel) {
		this.relationship = rel;
	}
	public void setDescription(String des) {
		this.description = des;
	}
	public void setReportername(String repname) {
		this.reporter_name = repname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
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
	public String getGender() {
		return this.gender;
	}
	public String getRelationship() {
		return this.relationship;
	}
	public String getDescription() {
		return this.description;
	}
	public String getReportername() {
		return this.reporter_name;
	}
	public String getEmail() {
		return this.email;
	}
	public String getPhno() {
		return this.phno;
	}
	public boolean getError() {
		return this.error;
	}
}
