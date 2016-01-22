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
import com.psl.model.ProblemStatement;;


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
	
}
