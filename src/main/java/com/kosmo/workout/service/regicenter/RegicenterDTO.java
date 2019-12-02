package com.kosmo.workout.service.regicenter;

public class RegicenterDTO {

	String no;
	String id;
	String startDate;
	String endDate;
	String mapkey;
	int isAllowed;
	String name;
	String authority;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getMapkey() {
		return mapkey;
	}
	public void setMapkey(String mapkey) {
		this.mapkey = mapkey;
	}
	public int getIsAllowed() {
		return isAllowed;
	}
	public void setIsAllowed(int isAllowed) {
		this.isAllowed = isAllowed;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
}
