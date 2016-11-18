package com.kosta.vo;

import java.util.Date;

public class Hope_repVO extends PageInfo_rep {

	private int num, hNum;
	private String id, title, content;
	private Date rep_Date;
	

	
	public int gethNum() {
		return hNum;
	}
	public void sethNum(int hNum) {
		this.hNum = hNum;
	}
	
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
	public Date getRep_Date() {
		return rep_Date;
	}
	public void setRep_Date(Date rep_Date) {
		this.rep_Date = rep_Date;
	}

}
