package com.kosmo.workout.service;

import java.sql.Date;

public class MyMateDTO {
	private String fno;
	private String id;
	private String FRIEND_ID;
	private Date MATEDATE;
	
	public String getFno() {
		return fno;
	}
	public void setFno(String fno) {
		this.fno = fno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFRIEND_ID() {
		return FRIEND_ID;
	}
	public void setFRIEND_ID(String fRIEND_ID) {
		FRIEND_ID = fRIEND_ID;
	}
	public Date getMATEDATE() {
		return MATEDATE;
	}
	public void setMATEDATE(Date mATEDATE) {
		MATEDATE = mATEDATE;
	}
	

	
	
}
