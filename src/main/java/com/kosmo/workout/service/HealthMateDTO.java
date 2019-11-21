package com.kosmo.workout.service;

import java.sql.Date;

public class HealthMateDTO {
	
	private int no;
	private String id;
	private String title;
	private String first_tag;
	private String second_tag;
	private String third_tag;
	private String location;
	private String healthTime;
	private Date postDate;
	private Date startDate;
	private Date endDate;
	private String interSport;
	private String matePhoto;
	
	
	//게터와 세터
	public String getFirst_tag() {
		return first_tag;
	}
	public void setFirst_tag(String first_tag) {
		this.first_tag = first_tag;
	}
	public String getSecond_tag() {
		return second_tag;
	}
	public void setSecond_tag(String second_tag) {
		this.second_tag = second_tag;
	}
	public String getThird_tag() {
		return third_tag;
	}
	public void setThird_tag(String third_tag) {
		this.third_tag = third_tag;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getInterSport() {
		return interSport;
	}
	public void setInterSport(String interSport) {
		this.interSport = interSport;
	}
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}	
	
}///////////////class
