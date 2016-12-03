package com.kosta.vo;

import java.util.Date;

public class SearchVO extends PageInfo{

	private String searchType, keyword, bNo, p_bNo, p_bMonth, bTitle, bWriter, bCompany, bIntro;
	private Date buy_date; 
	private String start_date, end_date, submit_date,reserve_date;
	private int bLocation, bYear, bRent;
	
	
	public String getReserve_date() {
		return reserve_date;
	}

	public void setReserve_date(String reserve_date) {
		this.reserve_date = reserve_date;
	}

	public String getSubmit_date() {
		return submit_date;
	}

	public void setSubmit_date(String submit_date) {
		this.submit_date = submit_date;
	}

	public String getP_bMonth() {
		return p_bMonth;
	}

	public void setP_bMonth(String p_bMonth) {
		this.p_bMonth = p_bMonth;
	}

	public String getP_bNo() {
		return p_bNo;
	}

	public void setP_bNo(String p_bNo) {
		this.p_bNo = p_bNo;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getbRent() {
		return bRent;
	}

	public void setbRent(int bRent) {
		this.bRent = bRent;
	}

	public String getbNo() {
		return bNo;
	}

	public void setbNo(String bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
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

	public Date getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(Date buy_date) {
		this.buy_date = buy_date;
	}

	public int getbLocation() {
		return bLocation;
	}

	public void setbLocation(int bLocation) {
		this.bLocation = bLocation;
	}

	public int getbYear() {
		return bYear;
	}

	public void setbYear(int bYear) {
		this.bYear = bYear;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
}
