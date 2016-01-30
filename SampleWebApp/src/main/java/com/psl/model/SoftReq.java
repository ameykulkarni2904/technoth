package com.psl.model;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="softreq")
public class SoftReq {

	private int softreq_id;
	private String version;
	private String url;
	private String name;
	private String team_name;
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public int getSoftreq_id() {
		return softreq_id;
	}
	public void setSoftreq_id(int softreq_id) {
		this.softreq_id = softreq_id;
	}
	
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "SoftReq [softreq_id=" + softreq_id + ", version=" + version
				+ ", url=" + url + ", name=" + name + ", team_name="
				+ team_name + "]";
	}
	
	
	public SoftReq(int softreq_id, String version, String url, String name,
			String team_name) {
		super();
		this.softreq_id = softreq_id;
		this.version = version;
		this.url = url;
		this.name = name;
		this.team_name = team_name;
	}
	public SoftReq()
	{
		
	}
	
}
