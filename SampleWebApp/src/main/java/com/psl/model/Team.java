package com.psl.model;

public class Team {
	private int team_id;
	private String team_name;
	private int leader_id;
	private String password;
	private int memberCount;
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public int getLeader_id() {
		return leader_id;
	}
	public void setLeader_id(int leader_id) {
		this.leader_id = leader_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getMemberCount() {
		return memberCount;
	}
	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}
	@Override
	public String toString() {
		return "Team [team_id=" + team_id + ", team_name=" + team_name
				+ ", leader_id=" + leader_id + ", password=" + password
				+ ", memberCount=" + memberCount + "]";
	}
	public Team() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
