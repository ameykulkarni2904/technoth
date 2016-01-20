package com.psl.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;

import com.psl.dao.*;
import com.psl.model.Participant;

public class TeamFormation {
	
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
		addMembers(teamMap,map,no_of_membersFromEachBatch,no_of_batches);
		
		
		
		
	}
	
	private void addMembers(Map<Integer, List<Participant>> teamMap,
			Map<String, List<Participant>> map,int fromeachBatch, int batchSize) {
		// TODO Auto-generated method stub
		
			for (Map.Entry<Integer, List<Participant>> team : teamMap.entrySet()) {
				for(int j=0;j<batchSize && team.getValue().size()<6;j++){
				for (Map.Entry<String, List<Participant>> batch : map.entrySet()) {
				//	for(int i=0;i<batchSize;i++){
//						int index=(int) (Math.random()*batch.getValue().size());
						for(int i=0;i<fromeachBatch && batch.getValue().size()>0 && team.getValue().size()<6;i++){
							team.getValue().add(batch.getValue().get(i));
							System.out.println(batch.getValue().get(i)+"removed");
							batch.getValue().remove(i);
						}
						if(batch.getValue().size()==0){
							j--;
						}
//						break;
					//	System.out.println(index);
				//	}
				}
					
					
				}
			} 
			for (Map.Entry<Integer, List<Participant>> team : teamMap.entrySet()) {
				System.out.println("Team"+team.getKey()+": ");
				for (Participant p : team.getValue()) {
					System.out.println(" member: "+p.getEmployee_name());
				}
				System.out.println("-----------------------------------------");
			}
		
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
