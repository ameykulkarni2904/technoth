package com.psl.model;

public class Teamlogin {
	@Override
	public String toString() {
		return "Teamlogin [name=" + name + ", password=" + password + "]";
	}
	private String name;
	private String password;
	
	public Teamlogin(){
		
	}
	
	public Teamlogin(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	


}
