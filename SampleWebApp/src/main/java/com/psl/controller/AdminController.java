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
import com.psl.model.DailyReport;
import com.psl.model.ProblemStatement;
import com.psl.model.Teamlogin;
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
		Teamlogin Teamlogin = new Teamlogin();
		m.addAttribute("teamlogin", Teamlogin);
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
		
		Teamlogin Teamlogin = new Teamlogin();
		model.addAttribute("teamlogin", Teamlogin);
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
	@RequestMapping(value = "/teamLogin", method = RequestMethod.GET)
	public String teamLogin(Model model) {
		System.out.println("in login get method");
		Teamlogin Teamlogin = new Teamlogin();
		model.addAttribute("teamlogin", Teamlogin);

		Admin admin = new Admin();
		model.addAttribute("admin", admin);

		return "index";

	}

	@RequestMapping(value = "/teamLogin", method = RequestMethod.POST)
	public String teamLogin(Model model, Teamlogin Teamlogin) {
		System.out.println("in login post method");
		System.out.println("tea"+Teamlogin);
//		model.addAttribute("teamlogin1", Teamlogin);
		ProblemStatement ps=new ProblemStatement();
		model.addAttribute("problemstatement",ps);
		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();

		// session.save(admin);
		// session.g
		String sql = "from Teamlogin where name =:name and password=:password";
		Query query = session.createQuery(sql);
		query.setString("name", Teamlogin.getName());
		query.setString("password", Teamlogin.getPassword());
		List<Teamlogin> list = query.list();
		System.out.println("list" + list);
		if (list.size() != 0) {
			System.out.println("list" + list);
			return "team";
		}
		session.flush();

		transaction.commit();

		session.close();

		return "index";

	}
	
	@RequestMapping(value="/displayreport",method=RequestMethod.GET)
	public String loginpost(Model model){
		//String teamName=new String();
		DailyReport rep=new DailyReport();
		model.addAttribute("team_name", rep);
		return "DisplayReport";
	}
	@RequestMapping(value="/displayreport",method=RequestMethod.POST)
	public String loginposts(Model model,DailyReport rep){
		//String teamName=new String();
		//model.addAttribute("team_name", teamName);
		///DailyReport rep1=new DailyReport();
		
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		DailyReport dr=new DailyReport();
		Transaction transaction= session.beginTransaction();
		Query q=session.createQuery("from DailyReport");
		//session.createCriteria(arg0, arg1)
		List<DailyReport> dl=(List<DailyReport>)q.list();
		for (DailyReport report :dl) {
			if(rep.getTeam_name().equalsIgnoreCase(report.getTeam_name())){
				dr=report;
				break;
			}
		}
		model.addAttribute("team_name", dr);
		System.out.println("daily report"+dr);
		return "DisplayReport";
	}
	
}
