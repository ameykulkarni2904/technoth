package com.psl.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="milestone")
public class Milestone {
	private int milestoneId;
	private String milestoneName;
	private Date startDateTime;
	private Date endDateTime;
	private int noOfDays;
	public String getMilestoneName() {
		return milestoneName;
	}
	public void setMilestoneName(String milestoneName) {
		this.milestoneName = milestoneName;
	}
	@Override
	public String toString() {
		return "Milestone [milestoneId=" + milestoneId + ", milestoneName="
				+ milestoneName + ", startDateTime=" + startDateTime
				+ ", endDateTime=" + endDateTime + ", noOfDays=" + noOfDays
				+ "]";
	}
	public int getMilestoneId() {
		return milestoneId;
	}
	public void setMilestoneId(int milestoneId) {
		this.milestoneId = milestoneId;
	}
	public Date getStartDateTime() {
		return startDateTime;
	}
	public void setStartDateTime(Date startDateTime) {
		this.startDateTime = startDateTime;
	}
	public Date getEndDateTime() {
		return endDateTime;
	}
	public void setEndDateTime(java.util.Date date) {
		this.endDateTime = date;
	}
	public int getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}
	
	
}
