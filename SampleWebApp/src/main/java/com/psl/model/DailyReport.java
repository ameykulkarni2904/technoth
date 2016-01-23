package com.psl.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


public class DailyReport {
	private int report_id;
	public void setReport_id(int report_id) {
		this.report_id = report_id;
	}
	public int getReport_id() {
		return report_id;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	private String team_name;
	private Date date;
	private int design;
	private int database;
	private int coding;
	private String design_desc;
	private String database_desc;
	private String coding_desc;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getDesign() {
		return design;
	}
	public void setDesign(int design) {
		this.design = design;
	}
	public int getDatabase() {
		return database;
	}
	public void setDatabase(int database) {
		this.database = database;
	}
	public int getCoding() {
		return coding;
	}
	public void setCoding(int coding) {
		this.coding = coding;
	}
	
	public DailyReport(){
		
	}
	public String getDesign_desc() {
		return design_desc;
	}
	public void setDesign_desc(String design_desc) {
		this.design_desc = design_desc;
	}
	public String getDatabase_desc() {
		return database_desc;
	}
	public void setDatabase_desc(String database_desc) {
		this.database_desc = database_desc;
	}
	public String getCoding_desc() {
		return coding_desc;
	}
	public void setCoding_desc(String coding_desc) {
		this.coding_desc = coding_desc;
	}
	@Override
	public String toString() {
		return "DailyReport [report_id=" + report_id + ", team_name="
				+ team_name + ", date=" + date + ", design=" + design
				+ ", database=" + database + ", coding=" + coding
				+ ", design_desc=" + design_desc + ", database_desc="
				+ database_desc + ", coding_desc=" + coding_desc + "]";
	}
	
}
