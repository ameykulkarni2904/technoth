//package com.psl.controller;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.hibernate.cfg.Configuration;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.psl.model.Admin;
//import com.psl.model.Teamlogin;
//
//@Controller
//public class CommonController {
//	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String add(HttpServletRequest request, HttpServletResponse response,Model m) {
//		HttpSession httpSession = request.getSession(false);
//		Admin admin = new Admin();
//		m.addAttribute("admin", admin);
//
//		Teamlogin Teamlogin = new Teamlogin();
//		m.addAttribute("teamlogin", Teamlogin);
//		return "index";
//	}
////	
////	@RequestMapping(value = "/signup", method = RequestMethod.GET)
////	public String addAdmin(HttpSession httpSession, Model m) {
////		// Admin a = new Admin("abc","abc@gmail.com",12345);
////		// m.addAttribute("admin", a);
////		Admin admin = new Admin();
////		m.addAttribute("admin", admin);
////
////		Teamlogin Teamlogin = new Teamlogin();
////		m.addAttribute("teamlogin", Teamlogin);
////		// out.print(a.getEmailID());
////		
////		
////		Configuration configuration = new Configuration();
////		configuration.addResource("com/psl/model/Admin.hbm.xml");
////		configuration.configure();
////		SessionFactory factory = configuration.buildSessionFactory();
////		Session session = factory.openSession();
////
////		Transaction transaction = session.beginTransaction();
////
////		// session.save(a);
////
////		session.flush();
////
////		transaction.commit();
////
////		session.close();
////		return "home";
////	}
////	
////	@RequestMapping(value = "/login", method = RequestMethod.GET)
////	public String login(Model model) {
////		System.out.println("in login get method");
////		Admin admin = new Admin();
////		Teamlogin Teamlogin = new Teamlogin();
////		model.addAttribute("teamlogin", Teamlogin);
////		model.addAttribute("admin", admin);
////
////		return "login";
////
////	}
////	
////	@RequestMapping(value = "/teamLogin", method = RequestMethod.GET)
////	public String teamLogin(Model model) {
////		System.out.println("in login get method");
////		Teamlogin Teamlogin = new Teamlogin();
////		model.addAttribute("teamlogin", Teamlogin);
////
////		Admin admin = new Admin();
////		model.addAttribute("admin", admin);
////
////		return "teamlogin";
////
////	}
//}
