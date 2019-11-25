package com.kosmo.workout.service;

import java.sql.Date;

public class AuthSecurityDTO {
	private String secno;
	private String id;
	private String authority;
	private String enabled;
	
	public String getSecno() {
		return secno;
	}
	public void setSecno(String secno) {
		this.secno = secno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	
}
