package com.psl.model;

import java.io.Serializable;

public class Participant implements Serializable {
	private int team_id;
	private int employee_id;
	private String employee_name;
	private String mail_id;
	private String batch;
	private String team_name;
	private String contact_no;
	public int getEmployee_id() {
		return employee_id;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getMail_id() {
		return mail_id;
	}
	public void setMail_id(String mail_id) {
		this.mail_id = mail_id;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	
	
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getTeam_name() {
		return team_name;
	}
	@Override
	public String toString() {
		return "Participant [employee_id=" + employee_id + ", employee_name="
				+ employee_name + ", mail_id=" + mail_id + ", batch=" + batch
				+ ", team_name=" + team_name + ", contact_no=" + contact_no
				+ "]";
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	
	public Participant(int employee_id, String employee_name, String mail_id,
			String batch, String team_name, String contact_no) {
		super();
		this.employee_id = employee_id;
		this.employee_name = employee_name;
		this.mail_id = mail_id;
		this.batch = batch;
		this.team_name = team_name;
		this.contact_no = contact_no;
	}
	public Participant() {
		// TODO Auto-generated constructor stub
	}
	
}
