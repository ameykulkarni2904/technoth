package com.psl.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="schedule")
public class Schedule {
	 @DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date startDate;
	 
	 @DateTimeFormat(pattern = "dd/MM/yyyy") 
	private Date endDate;
	private int noOfMilestones;
	
	
	public int getNoOfMilestones() {
		return noOfMilestones;
	}
	@Override
	public String toString() {
		return "Schedule [startDate=" + startDate + ", endDate=" + endDate
				+ ", noOfMilestones=" + noOfMilestones + "]";
	}
	public void setNoOfMilestones(int noOfMilestones) {
		this.noOfMilestones = noOfMilestones;
	}
	public Date getStartDate() {
		return startDate;
	}
	public Schedule(Date startDate, Date endDate, int noOfMilestones) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.noOfMilestones = noOfMilestones;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Schedule() {
		// TODO Auto-generated constructor stub
	}
}
