package com.smunsey.portfolio;

public class UserDTO {

	private String first_name;
	private String last_name;
	private String login;
	private String password;
	private String email;
	
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "UserDTO [first_name=" + first_name + ", last_name=" + last_name
				+ ", login=" + login + ", password=" + password + ", email="
				+ email + "]";
	}
	
	
}
