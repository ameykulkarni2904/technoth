package com.psl.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;

import com.psl.model.Participant;
import com.psl.model.ProblemStatement;
import com.psl.model.Team;
import com.psl.model.Teamlogin;

public class DaoOps {
	
	public List<Integer> getTeamCount(){
		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();
		
		List<Participant> list=session.createCriteria(Participant.class).addOrder(Order.asc("batch")).list();
		List<Integer> teams=getTeams(list);
	return teams;
	}
	
	public List<Integer> getTeams(List<Participant> list){
		List<Integer> teams=new ArrayList();
		
		for (Participant participant : list) {
			if(teams.contains(participant.getTeam_id())){
				continue;
			}
			else
			{
				teams.add(participant.getTeam_id());
			}
		}
		return teams;
		
		
		
	}
	
	public String addTeam(Team team){
		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();
		String sql = "from Team where team_id =:name ";
		Query query = session.createQuery(sql);
		query.setInteger("name", team.getTeam_id());
//		query.setString("password", Teamlogin.getPassword());
		List<Team> list = query.list();
		System.out.println("list" + list);
		if (list.size() != 0) {
			System.out.println("list" + list);
			return "Team already claimed";
			
			
//			return "team";
		}
		session.save(team);
		
		session.flush();

		transaction.commit();

		session.close();
		
		
		return "TEAM successfully claimed ";
		
	}
	public ProblemStatement getstatement(String teamName){
		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();
		String sql = "from ProblemStatement where team_name =:name ";
		Query query = session.createQuery(sql);
		query.setString("name", teamName);
		List<ProblemStatement> list = query.list();
		
		return list.get(0);
	}

	public void updateParticipants(Team team) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = HibernateUtil.getFactory();
		Session session = sessionFactory.openSession();
//		Transaction transaction = session.beginTransaction();

		
		String sql = "from Participant";
		Query query = session.createQuery(sql);
		List<Participant> list = query.list();
		for (Participant participant : list) {
			if(participant.getTeam_id()==team.getTeam_id()){
				Session session1 = sessionFactory.openSession();
				Transaction transaction = session1.beginTransaction();
				participant.setTeam_name(team.getTeam_name());
				session1.saveOrUpdate(participant);
				

//				Transaction transaction = session.beginTransaction();
				//session1.flush();
				transaction.commit();
				session1.close();
				
			}
		}
		
	}
}
