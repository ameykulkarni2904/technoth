package com.psl.controller;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.psl.dao.HibernateUtil;
import com.psl.model.Milestone;
import com.psl.model.Schedule;
@Controller
@RequestMapping(value="/schedule1")
public class ScheduleController {
	static int milestonescount=0;
	//static int count =0; 
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String generateSchedule(Model model){
		Milestone milestone=new Milestone();
		
		Schedule sc=new Schedule();
		//Milestone milestone=new Milestone();
		model.addAttribute("schedule",sc);
		model.addAttribute("milestone", milestone);
		
		
		return "schedule";
	}
	
	
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String generateSchedule(Model model,Schedule schedule){
//		milestonescount=schedule.getNoOfMilestones();
		schedule.setNoOfMilestones(4);
		System.out.println("schedule from jsp: " + schedule);
		ScheduleController scheduleController=new ScheduleController();
		Date startDate=schedule.getStartDate();
		Date endDate=schedule.getEndDate();
		int noOfMilestones=schedule.getNoOfMilestones();
		
		Calendar startCal=Calendar.getInstance();
		Calendar endCal=Calendar.getInstance();
		startCal.setTime(startDate);
		endCal.setTime(endDate);
		int noOfDays=(int)(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24);
		System.out.println(noOfDays);
	//	schedule.setStartDate(startDate);
	//	schedule.setEndDate(endDate);
	//	schedule.setNoOfMilestones(noOfMilestones);
		
		//Milestone milestone=scheduleController.createFirstMilestone(schedule, 2);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		
		//session.save(milestone);
		session.save(schedule);
	//	session.flush();
		transaction.commit();
		session.close();
		return "schedule";
		
	}
	
	
	public Milestone createFirstMilestone(String milestoneName,int noOfDays){
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		System.out.println("in createFirst milestone "+milestoneName);
		System.out.println("in createFirst milestone noOfdays"+noOfDays);
		//session.save(milestone);
		Query q=session.createQuery("from Schedule");
		Schedule schedule=(Schedule) q.list().get(q.list().size()-1);
		
		Milestone milestone=new Milestone();
		Calendar cal=Calendar.getInstance();
		cal.setTime(schedule.getStartDate());
		//cal.add(Calendar.DATE, 1);
		System.out.println("start time"+cal.getTime());
		milestone.setStartDateTime(cal.getTime());
		Calendar endDate=Calendar.getInstance();
		endDate.setTime(schedule.getStartDate());
		endDate.add(Calendar.DATE, noOfDays-1);
		System.out.println("end time"+endDate.getTime());
		milestone.setEndDateTime(endDate.getTime());
//		count++;
		storeMilestone(milestone);
		return milestone;
	}
	
	public void storeMilestone(Milestone milestone){
		
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		
		//session.save(milestone);
		session.save(milestone);
	//	session.flush();
		transaction.commit();
		session.close();
		
		
		
	}
	
	private Milestone getPreviousMilestone(){
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		
		//session.save(milestone);
		Query q=session.createQuery("from Milestone");
		Milestone milestone=(Milestone) q.list().get(q.list().size()-1);
		transaction.commit();
		session.close();
		return milestone;
	}
	
	@RequestMapping(value="/milestone",method=RequestMethod.GET)
	public String addMilestoneObject(Model model){
		System.out.println("in milestone get");
		Milestone milestone1=new Milestone();
		Milestone milestone2=new Milestone();
		Milestone milestone3=new Milestone();
		Milestone milestone4=new Milestone();
		Schedule sc=new Schedule();
		//Milestone milestone=new Milestone();
		
		model.addAttribute("milestones", milestone1);
		model.addAttribute("milestone2", milestone2);
		model.addAttribute("milestone3", milestone3);
		model.addAttribute("milestone4", milestone4);
		
		return "milestone";
	}
	
	
	@RequestMapping(value="/milestone",method=RequestMethod.POST)
	public String addMilestone(Model model,Milestone milestone){
//		int count =0;
		Milestone milestone1=new Milestone();
		Milestone milestone2=new Milestone();
		Milestone milestone3=new Milestone();
		Milestone milestone4=new Milestone();
		Schedule sc=new Schedule();
		//Milestone milestone=new Milestone();
		
		model.addAttribute("milestones", milestone1);
		model.addAttribute("milestone2", milestone2);
		model.addAttribute("milestone3", milestone3);
		model.addAttribute("milestone4", milestone4);
		
		
		System.out.println("in milestone post");
		if(checkIfFirstMilestone()){
//			milestone.setMilestoneId(count);
			Schedule schedule=getSchedule();
			createFirstMilestone(milestone.getMilestoneName(), milestone.getNoOfDays());
			return "milestone";
		}
		Milestone previousMilestone=getPreviousMilestone();
//		milestone.setMilestoneId(count);
		Calendar startDate=Calendar.getInstance();
		//endDate.s
		//Milestone milestone=new Milestone();
		startDate.setTime(previousMilestone.getEndDateTime());
		startDate.add(Calendar.DATE, 1);
		//milestone.setNoOfDays(noOfDays);
		milestone.setStartDateTime(startDate.getTime());
		Calendar endDate=Calendar.getInstance();
		endDate.setTime(startDate.getTime());
		endDate.add(Calendar.DATE, milestone.getNoOfDays()-1);
		Date edate=checkForSundays(startDate,milestone.getNoOfDays(),endDate);
		milestone.setEndDateTime(edate);
		
		storeMilestone(milestone);
		/*SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		
		//session.save(milestone);
		session.save(milestone);
	//	session.flush();
		transaction.commit();
		session.close();
		*/
//		count++;
		return "milestone";
	}


	private boolean checkIfFirstMilestone() {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		//session.save(milestone);
		Query q=session.createQuery("from Milestone");
		if(q.list().size()==0){
			return true;
		}
		
		return false;
	}



	private Schedule getSchedule() {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		
		//session.save(milestone);
		Query q=session.createQuery("from Schedule");
		Schedule schedule=(Schedule) q.list().get(q.list().size()-1);
		
	//	session.flush();
		transaction.commit();
		session.close();
		return schedule;
	}



	public Date checkForSundays(Calendar startDate, int noOfDays,
			Calendar endDate) {
		// TODO Auto-generated method stub
//		Calendar c1 = Calendar.getInstance();
//		c1.setTime(d1);
		 
		/*Calendar c2 = Calendar.getInstance();
		c2.setTime(d2);*/
		 
		int sundays = 0,count=0;
		Calendar tempDate=Calendar.getInstance();
		tempDate.setTime(startDate.getTime());
		 System.out.println("in controller");
		while(tempDate.before(endDate) && count<noOfDays) {// c1.after(c2) && 
			
			 System.out.println("while loop "+tempDate.get(Calendar.DAY_OF_WEEK));
		    if(tempDate.get(Calendar.DAY_OF_WEEK)==Calendar.SUNDAY){
		    	
		        sundays++;
		        tempDate.add(Calendar.DATE,1);
		    }
		    else tempDate.add(Calendar.DATE, 1);
		    
		    count++;
		}
		
			
		startDate.add(Calendar.DATE, noOfDays+sundays-1);	
		//c1.add(Calendar.DATE,sundays);
		System.out.println("sundays:"+sundays);
		/*while(sundays<noOfDays){
			c1.add(Calendar.DATE, 1);
		}*/
		
		return startDate.getTime();
		
		
	}
	
	
	/*
	
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
	
	
	
	public List<Milestone> generateMilestones( Schedule schedule, Milestone...milestones){
		List<Milestone> finalList=new ArrayList<Milestone>();
		
		Calendar startDate=Calendar.getInstance();
		Calendar endDate=Calendar.getInstance();
		startDate.setTime(schedule.getStartDate());
		
		for(Milestone milestone:milestones){
			if(milestone.getStartDateTime().equals(null)){
				milestone.setStartDateTime(startDate.getTime());
				startDate.add(Calendar.DATE, milestone.getNoOfDays()-1);
				milestone.setEndDateTime(startDate.getTime());
				
				System.out.println(startDate);
			}
		//	endDate.add(Calendar.DATE, milestone.getNoOfDays());
			milestone.setStartDateTime(startDate.getTime());
			startDate.add(Calendar.DATE, milestone.getNoOfDays());
			milestone.setEndDateTime(endDate.getTime());
		}
		System.out.println(finalList);
		return finalList;
	}
	
	
	
	milestone.setStartDate(startDate.getTime());
	//		milestone.setStartDate(schedule.getStartdate());
	*/
	
	
	
	
	
	
	
	
	
	
	
}
