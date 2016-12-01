package com.kosta.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BookVO extends PageInfo_rep{

	private String bNo, bTitle, bWriter, bCompany, bIntro;
	private Date buy_date,f_date;
	private int bLocation;
	private int bYear,bRent, brent_cnt;
	private String searchType;
	private String value;
	private String keyword;
	private String select;
	private String gan_M;
	private String gan_Y;
	private MultipartFile file;
	private String buyDate;
	
	
	
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getGan_Y() {
		return gan_Y;
	}
	public void setGan_Y(String gan_Y) {
		this.gan_Y = gan_Y;
	}
	public String getGan_M() {
		return gan_M;
	}
	public void setGan_M(String gan_M) {
		this.gan_M = gan_M;
	}
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	public Date getF_date() {
		return f_date;
	}
	public void setF_date(Date f_date) {
		this.f_date = f_date;
	}
	public int getbRent() {
		return bRent;
	}
	public void setbRent(int bRent) {
		this.bRent = bRent;
	}
	public int getBrent_cnt() {
		return brent_cnt;
	}
	public void setBrent_cnt(int brent_cnt) {
		this.brent_cnt = brent_cnt;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
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
	public int getbYear() {
		return bYear;
	}
	public void setbYear(int bYear) {
		this.bYear = bYear;
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

	
}
