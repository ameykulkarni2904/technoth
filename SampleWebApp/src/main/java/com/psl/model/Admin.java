package com.psl.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="admin")
public class Admin {
	private String name;
	private String emailID;
	private int empID;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailID() {
		return emailID;
	}
	@Override
	public String toString() {
		return "Admin [name=" + name + ", emailID=" + emailID + ", empID="
				+ empID + "]";
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public Admin(String name, String emailID, int empID) {
		super();
		this.name = name;
		this.emailID = emailID;
		this.empID = empID;
	}
	
	public Admin(){
		
	}
	
	
	
}
