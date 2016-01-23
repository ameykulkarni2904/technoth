package com.psl.controller;
//import javax.persistence.*;

import java.util.Date;
import java.util.List;

import org.apache.catalina.core.ApplicationContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.aop.framework.adapter.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.psl.model.Admin;
import com.psl.model.DailyReport;
import com.psl.dao.HibernateUtil;

@Controller
//@RequestMapping(value="/admin")
public class DailyReportController {
	
	@RequestMapping(value="/report",method=RequestMethod.GET)
	public String addReport(Model m){
		//Admin a = new Admin("abc","abc@gmail.com",12345);
		//m.addAttribute("admin", a);
		DailyReport report=new DailyReport();
		m.addAttribute("report",report);
		//out.print(a.getEmailID());
	/*
		Configuration configuration=new Configuration();
		configuration.addResource("com/psl/model/DailyReport.hbm.xml");
		configuration.configure();
		SessionFactory factory=configuration.buildSessionFactory();
		Session session=factory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		//session.save(a);
		
		session.flush();
		
		transaction.commit();
		
		session.close();*/
		return "Report";
	}
	@RequestMapping(value="/report",method=RequestMethod.POST)
	public String report(Model model,DailyReport report){
		//model.addAttribute("report1", report);
		//report.setReport_id(1);
		//report.setReport_id(0);
		report.setDate(new Date());
		System.out.println("Report "+report);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
	Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		session.save(report);
//		session
		session.flush();
		
		transaction.commit();
		
		session.close();
		System.out.println("* ****************************");
		return "Report";
	}
	/*@RequestMapping(value="/getreport",method=RequestMethod.GET)
	public String getReport(Model model){
		System.out.println("in getreport get method");
		DailyReport report= new DailyReport();
		model.addAttribute("report",report);
		
//		model.addAttribute("admin1", admin);
//		SessionFactory sessionFactory=HibernateUtil.getFactory();
//		Session session=sessionFactory.openSession();
//		
//		Transaction transaction= session.beginTransaction();
//		
//		//session.save(admin);
////		session.g
//		String sql="from Admin where empID =:id and password=:pwd";
//		Query query=session.createQuery(sql);
//		query.setInteger("id", admin.getEmpID());
//		query.setString("pwd", admin.getPwd());
//		List<Admin> list=query.list();
//		if(list.size()!=0){
//			System.out.println(list);
//			return "login";
//		}
//		session.flush();
//		
//		transaction.commit();
//		
//		session.close();
		
		return "Report1";
	
		
	}
	
	@RequestMapping(value="/getreport",method=RequestMethod.POST)
	public String getReportpost(Model model,DailyReport report){
		System.out.println("in login post method");
		model.addAttribute("report1", report);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		//session.save(admin);
//		session.g
		String sql="from daily_report where team_name=:teamnm";
		Query query=session.createQuery(sql);
		
		query.setString("teamnm",report.getTeam_name());
		List<DailyReport> list=query.list();
		System.out.println("list"+list);
		if(list.size()!=0){
			System.out.println("list"+list);
			return "PieChart";
		}
		session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "Report";
	
		
	}*/
	
}
