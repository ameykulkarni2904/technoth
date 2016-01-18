package com.psl.controller;

import javax.persistence.*;

import org.apache.catalina.core.ApplicationContext;
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


@Controller

public class AdminController {
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addAdmin(Model m){
		Admin a = new Admin("abc","abc@gmail.com",121);
		m.addAttribute("admin", a);
		
		//out.print(a.getEmailID());
	
		Configuration configuration=new Configuration();
		configuration.addResource("com/psl/model/Admin.hbm.xml");
		configuration.configure();
		SessionFactory factory=configuration.buildSessionFactory();
		Session session=factory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		session.save(a);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		return "home";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String signup(Model model,Admin admin){
		model.addAttribute("admin1", admin);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
	Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		session.save(admin);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "home";
	}
	
	
}
