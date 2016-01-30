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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.psl.dao.DaoOps;
import com.psl.dao.HibernateUtil;
import com.psl.model.ProblemStatement;
import com.psl.model.Status;


@Controller
public class ProblemStatementController {
	@RequestMapping(value="/pss",method=RequestMethod.GET)
	public String addProblemStatement(Model m){
		
		ProblemStatement ps=new ProblemStatement();
		m.addAttribute("problemstatement",ps);
		//out.print(a.getEmailID());
	
		Configuration configuration=new Configuration();
		configuration.addResource("com/psl/model/ProblemStatement.hbm.xml");
		configuration.configure();
		SessionFactory factory=configuration.buildSessionFactory();
		Session session=factory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		//session.save(a);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		return "team";
	}
	@RequestMapping(value="/pss",method=RequestMethod.POST)
	public String signup(Model model,ProblemStatement problemstatement){
		model.addAttribute("problemstatement1", problemstatement);
		problemstatement.setStatus(Status.PENDING);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
	Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		session.save(problemstatement);
		
		session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "team";
	}
	/*@RequestMapping(value="/ps",method=RequestMethod.GET)
	public String login(Model model){
		System.out.println("in login get method");
		ProblemStatement problemstatement=new ProblemStatement();
		model.addAttribute("problemstatement",problemstatement);
		

		
		return "team";
	
		
	}
	
	@RequestMapping(value="/ps",method=RequestMethod.POST)
	public String loginpost(Model model,ProblemStatement problemstatement){
		System.out.println("in login post method");
		model.addAttribute("problemstatement1", problemstatement);
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		
		Transaction transaction= session.beginTransaction();
		
		//session.save(admin);
//		session.g
		String sql="from Admin where team_name =:name and statement=:stmnt and description=:des";
		Query query=session.createQuery(sql);
		query.setString("name", problemstatement.getTeam_name());
		query.setString("stmnt", problemstatement.getStatement());
		query.setString("des", problemstatement.getDescription());
		List<ProblemStatement> list=query.list();
		System.out.println("list"+list);
		if(list.size()!=0){
			System.out.println("list"+list);
			return "ProbStMain";
		}
		session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "team";
	
		
	}*/
	
	@RequestMapping(value="/displayproblem")
	public String loginposts1(Model model,ProblemStatement ps){
		//String teamName=new String();
		//model.addAttribute("team_name", teamName);
		///DailyReport rep1=new DailyReport();
		
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		Query q=session.createQuery("from ProblemStatement");
		//session.createCriteria(arg0, arg1)
		List<ProblemStatement> dl=q.list();
		System.out.println("##################");
		model.addAttribute("list",dl);
		System.out.println("Problem Statement"+dl);
		//System.out.println("soft requirements"+dl);
		session.flush();
		
		transaction.commit();
		
		session.close();
		return "displayProblemStatement";
	}
	
	@RequestMapping(value="/checkstatus/{team}/{status}")
	public String checkststus(Model model,@PathVariable("team") String name,@PathVariable("status") String st  ){
		
		ProblemStatement ps=new ProblemStatement();
		model.addAttribute("problemstatement",ps);

		DaoOps s=new DaoOps();
		ProblemStatement ps1=s.getstatement(name);
		System.out.println(ps1);
		if(st.equalsIgnoreCase("YES")){
			System.out.println("yes");
			ps1.setStatus(Status.ACCEPTED);
		}
		if(st.equalsIgnoreCase("NO")){
			System.out.println("no");
			ps1.setStatus(Status.REJECTED);
		}
		
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		session.saveOrUpdate(ps1);
session.flush();
		
		transaction.commit();
		
		session.close();
		
		return "displayProblemStatement";
	}
	
	
}
