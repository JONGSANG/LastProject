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
	
}
