package ecu.webapde.model;

public class Register {
	private String firstname;
	private String lastname;
	private String username;
	private String password;
	
	public Register() { }
	
	public void setFirst(String firstname) {
		this.firstname = firstname;
	}
	
	public void setLast(String lastname) {
		this.lastname = lastname;
	}
	
	public void setUser(String username) {
		this.username = username;
	}
	
	public void setPass(String password) {
		this.password = password;
	}
	
	public String getFirst() {
		return firstname;
	}
	
	public String getLast() {
		return lastname;
	}
	
	public String getUser() {
		return username;
	}
	
	public String getPass() {
		return password;
	}
}
