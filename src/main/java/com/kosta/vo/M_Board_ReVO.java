package com.kosta.vo;

import java.util.Date;

public class M_Board_ReVO {
	
	private int num;
	private String id;
	private int mnum;
	private String title;
	private String content;
	private Date min_date;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getMin_date() {
		return min_date;
	}
	public void setMin_date(Date min_date) {
		this.min_date = min_date;
	}
	
}
