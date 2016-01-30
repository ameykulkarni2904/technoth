package com.psl.controller;

//import javax.persistence.*;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.psl.dao.DaoOps;
import com.psl.dao.HibernateUtil;
import com.psl.model.Admin;
import com.psl.model.DailyReport;
import com.psl.model.ProblemStatement;
import com.psl.model.Team;
import com.psl.model.Teamlogin;

@Controller
// @RequestMapping(value="/admin")
public class AdminController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String add(Model m,HttpSession httpSession) {
		Admin admin = new Admin();
		m.addAttribute("admin", admin);
		
		Teamlogin Teamlogin = new Teamlogin();
		m.addAttribute("teamlogin", Teamlogin);
		
		httpSession.setAttribute("userName", "");

		
		return "index";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String addAdmin(Model m) {
		// Admin a = new Admin("abc","abc@gmail.com",12345);
		// m.addAttribute("admin", a);
		Admin admin = new Admin();
		m.addAttribute("admin", admin);

		Teamlogin Teamlogin = new Teamlogin();
		m.addAttribute("teamlogin", Teamlogin);
		// out.print(a.getEmailID());

		Configuration configuration = new Configuration();
		configuration.addResource("com/psl/model/Admin.hbm.xml");
		configuration.configure();
		SessionFactory factory = configuration.buildSessionFactory();
		Session session = factory.openSession();

		Transaction transaction = session.beginTransaction();

		// session.save(a);

		session.flush();

		transaction.commit();

		session.close();
		return "home";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	@ResponseBody
	public String signup(Model model, Admin admin) {
		System.out.println("in signup post");
		model.addAttribute("admin1", admin);
		System.out.println("admin 1 " + admin);

		

		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();

		session.save(admin);

		session.flush();

		transaction.commit();

		session.close();

		return "redirect:login";
		// return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model,HttpSession response) {
		System.out.println("in login get method");
		Admin admin = new Admin();
		Teamlogin Teamlogin = new Teamlogin();
		model.addAttribute("teamlogin", Teamlogin);
		model.addAttribute("admin", admin);
		System.out.println(response.getAttribute("flag"));
		return "login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginpost(@CookieValue(value = "userName", defaultValue = " ") String userName,
			HttpServletResponse response, Model model, Admin admin, HttpSession httpSession) {
		System.out.println("in login post method");
		// model.addAttribute("admin1", admin);
		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();

		// session.save(admin);
		// session.g
		String sql = "from Admin where empID =:id and password=:pwd";
		Query query = session.createQuery(sql);
		query.setInteger("id", admin.getEmpID());
		query.setString("pwd", admin.getPwd());
		List<Admin> list = query.list();
		System.out.println("list" + list);
		if (list.size() != 0) {
			System.out.println("list" + list);
//			Cookie cookie = new Cookie("userName", list.get(0).getName());
//			cookie.setMaxAge(24*3600);
//			response.addCookie(cookie);
//			System.out.println(list.get(0));

			httpSession.setAttribute("userName", list.get(0).getName());

			return "AdminMain";
		}
		session.flush();

		transaction.commit();

		session.close();

		return "index";

	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutpost(@CookieValue(value = "userName", defaultValue = " ") String userName,
			HttpServletResponse response, Model model, HttpSession httpSession) {
		
		Admin admin = new Admin();
		Teamlogin Teamlogin = new Teamlogin();
		model.addAttribute("teamlogin", Teamlogin);
		model.addAttribute("admin", admin);
		
//		//response.
//		Cookie cookie = new Cookie("userName", "");
//		cookie.setMaxAge(0);
//		response.addCookie(cookie);
		
		httpSession.setAttribute("userName", "");
		
		return "index";
	}

	@RequestMapping(value = "/teamLogin", method = RequestMethod.GET)
	public String teamLogin(Model model) {
		System.out.println("in login get method");
		Teamlogin Teamlogin = new Teamlogin();
		model.addAttribute("teamlogin", Teamlogin);

		Admin admin = new Admin();
		model.addAttribute("admin", admin);

		return "teamlogin";

	}

	@RequestMapping(value = "/teamLogin", method = RequestMethod.POST)
	public String teamLogin(Model model, Teamlogin Teamlogin) {
		System.out.println("in login post method");
		System.out.println("tea" + Teamlogin);
		// model.addAttribute("teamlogin1", Teamlogin);
		Admin admin = new Admin();
		model.addAttribute("admin", admin);
		ProblemStatement ps = new ProblemStatement();
		model.addAttribute("problemstatement", ps);
		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();

		// session.save(admin);
		// session.g
		String sql = "from Team where team_name =:name and password=:password";
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
	@RequestMapping(value = "/claimTeam", method = RequestMethod.GET)
	public String claimTeam(Model m, HttpSession httpSession) {
		Team team=new Team();
		m.addAttribute("team",team);
		DaoOps dao=new DaoOps();
		List<Integer> list=dao.getTeamCount();
		m.addAttribute("teamlist", list);
		Admin admin = new Admin();
		m.addAttribute("admin", admin);
		
		Teamlogin Teamlogin = new Teamlogin();
		m.addAttribute("teamlogin", Teamlogin);
		if(httpSession.getAttribute("userName") == ""){
			return "index";
		}
		return "claimTeam";
	}
	@RequestMapping(value = "/claimTeam", method = RequestMethod.POST)
	public String claimTeam(Model m,Team team) {
		//Team team=new Team();
		m.addAttribute("team",team);
		DaoOps dao=new DaoOps();
		List<Integer> list=dao.getTeamCount();
		
		m.addAttribute("teamlist", list);
		
		m.addAttribute("msg",dao.addTeam(team));
		dao.updateParticipants(team);
		return "claimTeam";
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
