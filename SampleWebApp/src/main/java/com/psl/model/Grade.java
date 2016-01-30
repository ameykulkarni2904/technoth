package com.psl.model;

public class Grade {

	private String team_name;
	private String grades;
	private String milestone_id;
	private String feedback;
	@Override
	public String toString() {
		return "Grade [team_name=" + team_name + ", grades=" + grades
				+ ", milestone_id=" + milestone_id + ", feedback=" + feedback
				+ "]";
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getGrades() {
		return grades;
	}
	public void setGrades(String grades) {
		this.grades = grades;
	}
	public String getMilestone_id() {
		return milestone_id;
	}
	public void setMilestone_id(String milestone_id) {
		this.milestone_id = milestone_id;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	
}
