package com.kosta.vo;

import java.util.Date;

public class AdminServiceVO {
	private String title;
	private String id;
	private Date after_date;
	private int state;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getAfter_date() {
		return after_date;
	}
	public void setAfter_date(Date after_date) {
		this.after_date = after_date;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
}