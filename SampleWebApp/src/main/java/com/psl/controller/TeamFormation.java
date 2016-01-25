package com.psl.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.psl.dao.*;
import com.psl.model.Admin;
import com.psl.model.Participant;
import com.psl.model.Schedule;

@Controller
@RequestMapping(value="/teamformation")
public class TeamFormation {
	
	@RequestMapping(value="/team",method=RequestMethod.GET)
	public String team(Model model){
		return "team1";
	}
	@RequestMapping(value="/team",method=RequestMethod.POST)
	public String team(Model model,@RequestParam("size")String size){
		System.out.println("Team size "+size);
		teamFormation(Integer.parseInt(size));
		return "team1";
	}
	
	public void teamFormation(int teamSize){
		SessionFactory sessionfactory=HibernateUtil.getFactory();
		Session session=sessionfactory.openSession();
		Transaction transaction= session.beginTransaction();
		List<Participant> list=session.createCriteria(Participant.class).addOrder(Order.asc("batch")).list();
		int no_of_participants=list.size();
		List<String> batches=getBatches(list);
		int no_of_batches=batches.size();
		Map<String,List<Participant>> map=new HashMap();
		
		for (String string : batches) {
			map.put(string, new ArrayList<Participant>());
		}
		map=generateBatchWiseList(map,list);
		int no_of_teams=no_of_participants/teamSize;
		Map<Integer,List<Participant>> teamMap=new HashMap();
		teamMap=generateTeamMap(no_of_teams);
		int no_of_membersFromEachBatch=teamSize/no_of_batches;
		addMembers(teamMap,map,no_of_membersFromEachBatch,no_of_batches,teamSize);
		
		
		
		
	}
	
	private void addMembers(Map<Integer, List<Participant>> teamMap,
			Map<String, List<Participant>> map,int fromeachBatch, int batchSize,int teamSize) {
		// TODO Auto-generated method stub
		
			for (Map.Entry<Integer, List<Participant>> team : teamMap.entrySet()) {
				for(int j=0;j<batchSize && team.getValue().size()<teamSize;j++){
				for (Map.Entry<String, List<Participant>> batch : map.entrySet()) {
				//	for(int i=0;i<batchSize;i++){
//						int index=(int) (Math.random()*batch.getValue().size());
						for(int i=0;i<fromeachBatch && batch.getValue().size()!=0 && team.getValue().size()<teamSize;i++){
							System.out.println("i"+i);
							team.getValue().add(batch.getValue().get(0));
							System.out.println(batch.getValue().get(0)+"removed");
							batch.getValue().remove(0);
						}
						if(batch.getValue().size()==0){
							j--;
						}
						if(team.getValue().size()==teamSize){
							break;
						}
//						break;
					//	System.out.println(index);
				//	}
				}
					
					
				}
			}
			List<Participant> list=new ArrayList<Participant>();
			for(Map.Entry<String, List<Participant>> batch : map.entrySet()){
				list.addAll(batch.getValue());
			}
			while(list.size()!=0){
				for (Map.Entry<Integer, List<Participant>> team : teamMap.entrySet()) {
					if(list.size()>0){
					team.getValue().add(list.get(0));
					list.remove(0);
					}
					/*for (Participant participant : list) {
						
						System.out.println("remaining:"+participant);
					}*/
				}
			}
/*			for (Participant participant : list) {
				if(batch.getValue().size()>0){
					int count=0;
					for (Map.Entry<Integer, List<Participant>> team : teamMap.entrySet()) {
						System.out.println("team " +team.getKey());
						
						if(batch.getValue().size()>0){
							System.out.println("batch :"+batch.getValue().get(count));
							team.getValue().add(batch.getValue().get(count));
							batch.getValue().remove(count);
							count++;
						}
					}
				}	
			}*/
			
			
			for (Map.Entry<Integer, List<Participant>> team : teamMap.entrySet()) {
				System.out.println("Team"+team.getKey()+": ");
				for (Participant p : team.getValue()) {
					System.out.println(" member: "+p.getEmployee_name());
				}
				System.out.println("-----------------------------------------");
			}
			
			storeTeams(teamMap);
		
	}
	
	public void storeTeams(Map<Integer, List<Participant>> team){
		SessionFactory sessionFactory=HibernateUtil.getFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		
		//session.save(milestone);
		/*Query q=session.createQuery("from schedule");
		Schedule schedule=(Schedule) q.list().get(0);*/
		
		for (Map.Entry<Integer, List<Participant>> team1 : team.entrySet()) {
			for (Participant participant : team1.getValue()) {
				Participant p=(Participant)session.get(Participant.class, participant.getEmployee_id());
				p.setTeam_id(team1.getKey());
				session.save(p);
			}
		}
		
		
		session.flush();
		transaction.commit();
		session.close();
	}
	
	private Map<Integer,List<Participant>> generateTeamMap(int no_of_teams) {
		// TODO Auto-generated method stub
		Map<Integer,List<Participant>> teamMap=new HashMap();
		for(int i=0;i<no_of_teams;i++){
			teamMap.put(i, new ArrayList<Participant>());
		}
		return teamMap;
	}

	private Map<String,List<Participant>> generateBatchWiseList(Map<String,List<Participant>> map,
			List<Participant> list) {
		// TODO Auto-generated method stub
		for (Map.Entry<String, List<Participant>> batch : map.entrySet()) {
			for (Participant participant : list) {
				if(batch.getKey().equalsIgnoreCase(participant.getBatch())){
					map.get(batch.getKey()).add(participant);
				}
			}
			
		}
		
		return map;
	
	
	
	}
	
	

	public List<String> getBatches(List<Participant> list){
		List<String> batches=new ArrayList();
		for (Participant participant : list) {
			if(batches.contains(participant.getBatch())){
				continue;
			}
			else
			{
				batches.add(participant.getBatch());
			}
		}
		return batches;
	}
	
}
