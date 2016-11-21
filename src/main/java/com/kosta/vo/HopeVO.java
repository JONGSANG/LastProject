package com.kosta.vo;

import java.util.Date;

public class HopeVO extends PageInfo {

	private int num ,bYear, viewCnt; 
	private String id ,bName ,bWriter, bCompany , bIntro ;
	private Date hope_Date;
	private int re_cnt, result;

	
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public int getRe_cnt() {
		return re_cnt;
	}
	public void setRe_cnt(int re_cnt) {
		this.re_cnt = re_cnt;
	}
	public Date getHope_Date() {
		return hope_Date;
	}
	public void setHope_Date(Date hope_Date) {
		this.hope_Date = hope_Date;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getbYear() {
		return bYear;
	}
	public void setbYear(int bYear) {
		this.bYear = bYear;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbWriter() {
		return bWriter;
	}
	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}
	public String getbCompany() {
		return bCompany;
	}
	public void setbCompany(String bCompany) {
		this.bCompany = bCompany;
	}
	public String getbIntro() {
		return bIntro;
	}
	public void setbIntro(String bIntro) {
		this.bIntro = bIntro;
	}
	
	

	

	
}
