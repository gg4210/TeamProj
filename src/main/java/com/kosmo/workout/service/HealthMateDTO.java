package com.kosmo.workout.service;

import java.sql.Date;

public class HealthMateDTO {
	
	private int no;
	private String title;
	private String[] tag;
	private String location;
	private String healthTime;
	private Date postDate;
	private String matePhoto;
	
	//게터와 세터
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String[] getTag() {
		return tag;
	}
	public void setTag(String[] tag) {
		this.tag = tag;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getHealthTime() {
		return healthTime;
	}
	public void setHealthTime(String healthTime) {
		this.healthTime = healthTime;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public String getMatePhoto() {
		return matePhoto;
	}
	public void setMatePhoto(String matePhoto) {
		this.matePhoto = matePhoto;
	}	
	
}///////////////class
