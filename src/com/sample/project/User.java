package com.sample.project;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;

@PersistenceCapable
public class User {
	@Persistent
	private String name,eid,password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String id) {
		this.eid = id;
	}
	
}
