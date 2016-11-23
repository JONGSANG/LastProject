package com.kosta.vo;

import java.util.Date;

public class MyInfoVO {
	private String btitle;
	private String bno;
	private String rent_date;
	private String submit_date;
	private String reserve_date;
	private int brent;
	private boolean check_submit;
	private boolean check_late;
	
	public boolean isCheck_submit() {
		return check_submit;
	}
	public void setCheck_submit(boolean check_submit) {
		this.check_submit = check_submit;
	}
	public boolean isCheck_late() {
		return check_late;
	}
	public void setCheck_late(boolean check_late) {
		this.check_late = check_late;
	}
	private String id;
	private String cselect;
	private String aselect;
	private String title;
	private int max_cnt;
	private int tocnt;
	private Date after_date;
	private Date culture_date;
	
	private int late;
	
	public int getLate() {
		return late;
	}
	public void setLate(int late) {
		this.late = late;
	}
	public Date getCulture_date() {
		return culture_date;
	}
	public void setCulture_date(Date culture_date) {
		this.culture_date = culture_date;
	}
	private int state;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCselect() {
		return cselect;
	}
	public void setCselect(String cselect) {
		this.cselect = cselect;
	}
	public String getAselect() {
		return aselect;
	}
	public void setAselect(String aselect) {
		this.aselect = aselect;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public int getMax_cnt() {
		return max_cnt;
	}
	public void setMax_cnt(int max_cnt) {
		this.max_cnt = max_cnt;
	}
	public int getTocnt() {
		return tocnt;
	}
	public void setTocnt(int tocnt) {
		this.tocnt = tocnt;
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
	public int getBrent() {
		return brent;
	}
	public void setBrent(int brent) {
		this.brent = brent;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getRent_date() {
		return rent_date;
	}
	public void setRent_date(String rent_date) {
		this.rent_date = rent_date;
	}
	public String getSubmit_date() {
		return submit_date;
	}
	public void setSubmit_date(String submit_date) {
		this.submit_date = submit_date;
	}
	public String getReserve_date() {
		return reserve_date;
	}
	public void setReserve_date(String reserve_date) {
		this.reserve_date = reserve_date;
	}
	
	
}
