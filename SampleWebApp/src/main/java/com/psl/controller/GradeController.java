package com.psl.controller;

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

import com.psl.dao.HibernateUtil;
import com.psl.model.Grade;




@Controller
public class GradeController {

	@RequestMapping(value="/grade",method=RequestMethod.GET)
	public String addgrade(Model m){
		//Admin a = new Admin("abc","abc@gmail.com",12345);
		//m.addAttribute("admin", a);
		Grade grade=new Grade();
		m.addAttribute("grade",grade);
		//out.print(a.getEmailID());
	
		Configuration configuration=new Configuration();
		configuration.addResource("com/psl/model/Grade.hbm.xml");
		configuration.configure();
		SessionFactory factory=configuration.buildSessionFactory();
		Session session=factory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		//session.save(a);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		return "gradeAdmin";
	}
	@RequestMapping(value="/grade",method=RequestMethod.POST)
	public String signup(Model model,Grade grade){
		model.addAttribute("grade1", grade);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
	Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		session.save(grade);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "gradeAdmin";
	}
	/*@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model){
		System.out.println("in login get method");
		Admin admin=new Admin();
		model.addAttribute("admin",admin);
		

		
		return "index";
	
		
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String loginpost(Model model,Admin admin){
		System.out.println("in login post method");
		model.addAttribute("admin1", admin);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		//session.save(admin);
//		session.g
		String sql="from Admin where empID =:id and password=:pwd";
		Query query=session.createQuery(sql);
		query.setInteger("id", admin.getEmpID());
		query.setString("pwd", admin.getPwd());
		List<Admin> list=query.list();
		System.out.println("list"+list);
		if(list.size()!=0){
			System.out.println("list"+list);
			return "AdminMain";
		}
		session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "index";
	
		
	}*/
/*	@RequestMapping(value="/displaysoft",method=RequestMethod.GET)
	public String loginpost1(Model model){
		//String teamName=new String();
		SoftReq soft=new SoftReq();
		System.out.println("*********************");
		model.addAttribute("soft_req", soft);
		return "softReq";
	}*/
	/*@RequestMapping(value="/displaysoft")
	public String loginposts1(Model model,SoftReq soft){
		//String teamName=new String();
		//model.addAttribute("team_name", teamName);
		///DailyReport rep1=new DailyReport();
		
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		Query q=session.createQuery("from SoftReq");
		//session.createCriteria(arg0, arg1)
		List<SoftReq> dl=q.list();
		System.out.println("##################");
		model.addAttribute("list",dl);
		System.out.println("soft requirements"+dl);
		//System.out.println("soft requirements"+dl);
		session.flush();
		
		transaction.commit();
		
		session.close();
		return "softReq";
	}
	*/
}
