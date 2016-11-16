package com.kosta.vo;

import java.util.Date;

public class F_BoardVO {
	private int num;
	private String title;
	private String content;
	private String id;
	private Date write_date;
	private int viewcnt;
	public int getnum() {
		return num;
	}
	public void setnum(int num) {
		this.num = num;
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
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id = id;
	}
	public Date getwrite_date() {
		return write_date;
	}
	public void setwrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	@Override
	public String toString() {
		return "F_BoardVO [num=" + num + ", title=" + title + ", content=" + content + ", id=" + id + ", write_date="
				+ write_date + ", viewcnt=" + viewcnt + "]";
	}
	
}
