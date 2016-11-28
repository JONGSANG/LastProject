package com.kosta.vo;

import java.util.Date;

public class ServiceVO {
	private String id;
	private String title;
	private Date after_date;
	private String state;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getAfter_date() {
		return after_date;
	}
	public void setAfter_date(Date after_date) {
		this.after_date = after_date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
}
