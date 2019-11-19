package com.kosmo.workout.service;

import java.sql.Date;

public class MyMateDTO {
	private String yno;
	private String id;
	private String followedId;
	
	public String getYno() {
		return yno;
	}
	public void setYno(String yno) {
		this.yno = yno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFollowedId() {
		return followedId;
	}
	public void setFollowedId(String followedId) {
		this.followedId = followedId;
	}
	
}
