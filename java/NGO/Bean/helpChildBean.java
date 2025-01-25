package NGO.Bean;

import java.io.Serializable;

public class helpChildBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String fname, lname, age, gender, address, ph_no, issue, reporter, relationship, emailid, phno_of_reporter;
	private boolean error;
	//setter
	public void setFname(String fname) {
		this.fname = fname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setAdress(String address) {
		this.address = address;
	}
	public void setPhno(String phno) {
		this.ph_no = phno;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public void setReporter(String reporter) {
		this.reporter = reporter;
	}
	public void setRelation(String relation) {
		this.relationship = relation;
	}
	public void setEmail(String email) {
		this.emailid = email;
	}
	public void setPhon_reporter(String phno_of_reporter) {
		this.phno_of_reporter = phno_of_reporter;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	//getter
	public String getFname() {
		return this.fname;
	}
	public String getLname() {
		return this.lname;
	}
	public String getAge() {
		return this.age;
	}
	public String getGender() {
		return this.gender ;
	}
	public String getAdress() {
		return this.address;
	}
	public String getPhno() {
		return this.ph_no ;
	}
	public String getIssue() {
		return this.issue;
	}
	public String getReporter() {
		return this.reporter;
	}
	public String getRelation() {
		return this.relationship;
	}
	public String getEmail() {
		return this.emailid;
	}
	public String getPhon_reporter() {
		return this.phno_of_reporter;
	}
	public boolean getError() {
		return this.error;
	}
}
