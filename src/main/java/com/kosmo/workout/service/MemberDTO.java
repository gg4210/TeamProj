package com.kosmo.workout.service;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String password;
	private String password_re;
	private String name;
	private String email;
	private String address;
	private String detail_address;
	private String cellphone;
	private String authority;
	private String my_comment;
	private String picture;
	private String inter_sports;
	private java.sql.Date joinDate;
	private String nick_name;
	private String enabled;
	private String zipcode;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword_re() {
		return password_re;
	}

	public void setPassword_re(String password_re) {
		this.password_re = password_re;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getDetail_address() {
		return detail_address;
	}

	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getMy_comment() {
		return my_comment;
	}

	public void setMy_comment(String my_comment) {
		this.my_comment = my_comment;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getInter_sports() {
		return inter_sports;
	}

	public void setInter_sports(String inter_sports) {
		this.inter_sports = inter_sports;
	}

	public java.sql.Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(java.sql.Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
}
