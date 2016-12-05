package com.kosta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.kosta.dao.SchedulerDAO;

@Service
@EnableScheduling
public class SchedulerServiceImpl implements SchedulerService {

	@Autowired
	SchedulerDAO schedulerdao;
	
	@Override
	@Scheduled(fixedDelay=60000)
	public void roomTimeOut() throws Exception {
		//fixedDelay 호출 완료 후
		//1000=1초
		schedulerdao.roomTimeOut();
	}

	@Override
	@Scheduled(cron="0 0 * * * *")// : 매일 매시 정각
	public void reserveDel() throws Exception {
		schedulerdao.reserveDel();
	}
	

	@Override
	@Scheduled(cron="0 0 * * * *")// : 매일 매시 정각
	public void updateLate() throws Exception {
		schedulerdao.updateLate();
	}

	@Override
	@Scheduled(cron="0 0 * * * *")// : 매일 매시 정각
	public void insertLate() throws Exception {
		schedulerdao.insertLate();
	}

	@Override
	@Scheduled(cron="0 0 * * * *")// : 매일 매시 정각
	public void updateRent() throws Exception {
		schedulerdao.updateRent();
	}


}
