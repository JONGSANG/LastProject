package com.kosta.vo;

public class AdminInfoVO {
	private String rent_date;
	private String submit_date;
	private String btitle;
	private int late;
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
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public int getLate() {
		return late;
	}
	public void setLate(int late) {
		this.late = late;
	}
	
	
}
