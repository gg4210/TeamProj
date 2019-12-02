package com.kosmo.workout.service.search;

import org.springframework.security.core.userdetails.UserDetails;

public class SearchBBSDTO {

	String title;
	String mapkey;
	String tel;
	String addr;
	String jibunAddr;
	String otime;
	String content;
	String[] img_urls;
	String filename;
	String service;
	String tag;
	String sport_kind;
	int countNum;
	int MAXNUMBER;
	int avgR;
	String avgRate;
	String bookString;
	String compliextyString;
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
	
	public String getCompliextyString() {
		return compliextyString;
	}

	public void setCompliextyString(String compliextyString) {
		this.compliextyString = compliextyString;
	}

	public String getAvgRate() {
		return avgRate;
	}

	public void setAvgRate(String avgRate) {
		this.avgRate = avgRate;
	}

	public String getSport_kind() {
		return sport_kind;
	}

	public void setSport_kind(String sport_kind) {
		this.sport_kind = sport_kind;
	}

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
	public int getAvgR() {
		return avgR;
	}

	public void setAvgR(int avgR) {
		this.avgR = avgR;
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
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getCountNum() {
		return countNum;
	}

	public void setCountNum(int countNum) {
		this.countNum = countNum;
	}

	public int getMAXNUMBER() {
		return MAXNUMBER;
	}

	public void setMAXNUMBER(int mAXNUMBER) {
		MAXNUMBER = mAXNUMBER;
	}

	public String getBookString() {
		return bookString;
	}
	public void setBookString(String bookString) {
		this.bookString = bookString;
	}

	
}
