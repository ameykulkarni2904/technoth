package com.psl.controller;
//import javax.persistence.*;

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
import com.psl.dao.HibernateUtil;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public String addAdmin(Model m){
		//Admin a = new Admin("abc","abc@gmail.com",12345);
		//m.addAttribute("admin", a);
		Admin admin=new Admin();
		m.addAttribute("admin",admin);
		//out.print(a.getEmailID());
	
		Configuration configuration=new Configuration();
		configuration.addResource("com/psl/model/Admin.hbm.xml");
		configuration.configure();
		SessionFactory factory=configuration.buildSessionFactory();
		Session session=factory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		//session.save(a);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		return "index";
	}
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public String signup(Model model,Admin admin){
		model.addAttribute("admin1", admin);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
	Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		session.save(admin);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "index";
	}
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model){
		System.out.println("in login get method");
		Admin admin=new Admin();
		model.addAttribute("admin",admin);
		
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
	
		
	}
	
}
