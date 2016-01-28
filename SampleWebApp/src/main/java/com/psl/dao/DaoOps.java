package com.psl.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;

import com.psl.model.Participant;
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
	
}
