package com.kosta.vo;

public class LateInfoVO {
	private String subMtotal; //이번달 받은돈
	private String subTotal; //현재 연체료 받은 총액
	private String nsubTotal;//받아야할 돈 총액
	private String topLateUserID; //제일 오래 연체한 사람 아이디
	private String topLateUserName; //제일 오래 연체한 사람 이름
	private String topLateUserDay; //제일 오래 연체한 사람 일수
	public String getSubMtotal() {
		return subMtotal;
	}
	public void setSubMtotal(String subMtotal) {
		this.subMtotal = subMtotal;
	}
	public String getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(String subTotal) {
		this.subTotal = subTotal;
	}
	public String getNsubTotal() {
		return nsubTotal;
	}
	public void setNsubTotal(String nsubTotal) {
		this.nsubTotal = nsubTotal;
	}
	public String getTopLateUserID() {
		return topLateUserID;
	}
	public void setTopLateUserID(String topLateUserID) {
		this.topLateUserID = topLateUserID;
	}
	public String getTopLateUserName() {
		return topLateUserName;
	}
	public void setTopLateUserName(String topLateUserName) {
		this.topLateUserName = topLateUserName;
	}
	public String getTopLateUserDay() {
		return topLateUserDay;
	}
	public void setTopLateUserDay(String topLateUserDay) {
		this.topLateUserDay = topLateUserDay;
	}
	
	
}
