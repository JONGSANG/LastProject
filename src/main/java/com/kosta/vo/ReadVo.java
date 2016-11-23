package com.kosta.vo;

import java.util.Date;

public class ReadVo {

	private int BYEAR;
	private String  BNO, BTITLE, BWRITER, BCOMPANY, BINTRO;
	private Date BUY_DATE;
	
	
	public String getBNO() {
		return BNO;
	}
	public void setBNO(String bNO) {
		BNO = bNO;
	}

	public int getBYEAR() {
		return BYEAR;
	}
	public void setBYEAR(int bYEAR) {
		BYEAR = bYEAR;
	}
	public String getBTITLE() {
		return BTITLE;
	}
	public void setBTITLE(String bTITLE) {
		BTITLE = bTITLE;
	}
	public String getBWRITER() {
		return BWRITER;
	}
	public void setBWRITER(String bWRITER) {
		BWRITER = bWRITER;
	}
	public String getBCOMPANY() {
		return BCOMPANY;
	}
	public void setBCOMPANY(String bCOMPANY) {
		BCOMPANY = bCOMPANY;
	}
	public String getBINTRO() {
		return BINTRO;
	}
	public void setBINTRO(String bINTRO) {
		BINTRO = bINTRO;
	}
	public Date getBUY_DATE() {
		return BUY_DATE;
	}
	public void setBUY_DATE(Date bUY_DATE) {
		BUY_DATE = bUY_DATE;
	}
	 
	
	
	
}
