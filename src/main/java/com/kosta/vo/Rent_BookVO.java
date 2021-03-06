package com.kosta.vo;

import java.util.Date;

public class Rent_BookVO {
	private String bno, id, btitle;
	private Date rent_date, submit_date;
	private int rcnt; //현재 대출한 책의 권수를 저장하는 변수
	private int checkLate;
	private boolean check_late;
	private int money;
	
	
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public boolean isCheck_late() {
		return check_late;
	}
	public void setCheck_late(boolean check_late) {
		this.check_late = check_late;
	}
	public int getCheckLate() {
		return checkLate;
	}
	public void setCheckLate(int checkLate) {
		this.checkLate = checkLate;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public int getRcnt() {
		return rcnt;
	}
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getRent_date() {
		return rent_date;
	}
	public void setRent_date(Date rent_date) {
		this.rent_date = rent_date;
	}
	public Date getSubmit_date() {
		return submit_date;
	}
	public void setSubmit_date(Date submit_date) {
		this.submit_date = submit_date;
	}
	
	
	
	
}
