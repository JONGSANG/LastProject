package com.kosta.dao;

public interface SchedulerDAO {

	public void roomTimeOut() throws Exception;

	public void reserveDel() throws Exception;
	
	// 연체료 삽입 메소드
	public void insertLate() throws Exception;
	
	// 연체료 업데이트 메소드
	public void updateLate() throws Exception;
	
	// 연체된 사항을 rent_book 테이블에서 업데이트
	public void updateRent() throws Exception;

}
