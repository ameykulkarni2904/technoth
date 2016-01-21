package com.psl.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.psl.model.Milestone;
import com.psl.model.Schedule;

public class ScheduleController {
	
	public int calculateDays(Schedule schedule){
		Date startDate=schedule.getStartDate();
		Date endDate=schedule.getEndDate();
		/*Calendar startCal=Calendar.getInstance();
		Calendar endCal=Calendar.getInstance();
		startCal.setTime(startDate);
		endCal.setTime(endDate);*/
		int noOfDays=(int)(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24);
		System.out.println(noOfDays);
		return noOfDays;
	}
	
	
	
	
	public List<Milestone> generateMilestonesList(int noOfMilestones){
		List<Milestone> milestonesList=new ArrayList<Milestone>();
		
		
	//	Milestone milestone=new Milestone();
		for (int i = 0; i < noOfMilestones; i++) {
			
			Milestone milestone=new Milestone();
			milestonesList.add(milestone);
		}
		System.out.println(milestonesList.size());
		return milestonesList;
	}
	
	
	
	public List<Milestone> generateMilestones(List<Milestone> list,Schedule schedule){
		List<Milestone> finalList=new ArrayList<Milestone>();
		Calendar startDate=Calendar.getInstance();
		Calendar endDate=Calendar.getInstance();
		startDate.setTime(schedule.getStartDate());
		
		for(Milestone milestone:list){
		//	endDate.add(Calendar.DATE, milestone.getNoOfDays());
			milestone.setStartDateTime(startDate.getTime());
			finalList.add(milestone);
		}
		System.out.println(finalList);
		return finalList;
	}
	
	
	/*
	milestone.setStartDate(startDate.getTime());*/
	//		milestone.setStartDate(schedule.getStartdate());
	
	
	
}
