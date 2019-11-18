package com.kosmo.workout.service.search;

public class SearchBBSDTO {

	
	String title;
	String mapkey;
	String tel;
	String addr;
	String jibunAddr;
	String otime;
	String content;
	String[] img_urls;
	String service;

	
	public String getJibunAddr() {
		return jibunAddr;
	}
	public void setJibunAddr(String jibunAddr) {
		this.jibunAddr = jibunAddr;
	}	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMapkey() {
		return mapkey;
	}
	public void setMapkey(String mapkey) {
		this.mapkey = mapkey;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String[] getImg_urls() {
		return img_urls;
	}
	public void setImg_urls(String[] img_urls) {
		this.img_urls = img_urls;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	
	
}
