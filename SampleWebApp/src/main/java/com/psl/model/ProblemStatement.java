package com.psl.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="problemstatement")
public class ProblemStatement {

	private String team_name;
	private String statement;
	private String description;

	public ProblemStatement(){
		
	}
	
	public ProblemStatement(String team_name, String statement,
			String description) {
		super();
		this.team_name = team_name;
		this.statement = statement;
		this.description = description;
		
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getStatement() {
		return statement;
	}
	public void setStatement(String statement) {
		this.statement = statement;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

	@Override
	public String toString() {
		return "ProblemStatement [team_name=" + team_name + ", statement="
				+ statement + ", description=" + description 
				+"]";
	}
	
	
}
