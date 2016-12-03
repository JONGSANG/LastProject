package com.kosta.vo;

import java.util.Date;

import com.sun.xml.internal.bind.v2.model.core.ID;

public class ReserveVO {
	private String bno,id;
	private String reserve_date, reserve_end, submit_date;
	
	
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
	public String getReserve_date() {
		return reserve_date;
	}
	public void setReserve_date(String reserve_date) {
		this.reserve_date = reserve_date;
	}
	public String getReserve_end() {
		return reserve_end;
	}
	public void setReserve_end(String reserve_end) {
		this.reserve_end = reserve_end;
	}
	public String getSubmit_date() {
		return submit_date;
	}
	public void setSubmit_date(String submit_date) {
		this.submit_date = submit_date;
	}
	
}
