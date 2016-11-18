package com.kosta.vo;

import java.util.Date;

public class M_BoardVO extends PageInfo{
	private int num;
	private String id;
	private String mselect;
	private String title;
	private String content;
	private Date min_date;
	private int viewcnt;
	private int re_cnt;
	
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
	public String getMselect() {
		return mselect;
	}
	public void setMselect(String mselect) {
		this.mselect = mselect;
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
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getRe_cnt() {
		return re_cnt;
	}
	public void setRe_cnt(int re_cnt) {
		this.re_cnt = re_cnt;
	}
	
}
