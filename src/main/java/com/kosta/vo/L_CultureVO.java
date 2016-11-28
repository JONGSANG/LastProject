package com.kosta.vo;

import java.util.Date;

public class L_CultureVO {
	
	private int num, anum, state;
	private String id;
	private Date  culture_date;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getCulture_date() {
		return culture_date;
	}
	public void setCulture_date(Date culture_date) {
		this.culture_date = culture_date;
	}
}
