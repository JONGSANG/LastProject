package com.kosta.service;

public interface SchedulerService {
	public void roomTimeOut() throws Exception;
	
	//예약 된거 날짜계산후 삭제
	public void reserveDel() throws Exception;
}
