package NGO.Bean;

import java.io.Serializable;

public class ambulanceBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String fname,phno, lname, emailid, relationship, address, street_adress, city, state, postal;
	private boolean error;
	//Setter
	public void setFname(String fname) {
		this.fname = fname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setEmail(String emailid) {
		this.emailid = emailid;
	}
	public void setRelation(String relationship) {
		this.relationship = relationship;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setStreet_adress(String street_adress) {
		this.street_adress = street_adress;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setPostal(String postal) {
		this.postal = postal;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	//Getter
	public String getFname() {
		return this.fname;
	}
	public String getLname() {
		return this.lname;
	}
	public String getPhno() {
		return this.phno;
	}
	public String getEmail() {
		return this.emailid;
	}
	public String getRelation() {
		return this.relationship;
	}
	public String getAddress() {
		return this.address;
	}
	public String getStreet_adress() {
		return this.street_adress;
	}
	public String getCity() {
		return this.city;
	}
	public String getState() {
		return this.state;
	}
	public String getPostal() {
		return this.postal;
	}
	public boolean getError() {
		return this.error;
	}
}
