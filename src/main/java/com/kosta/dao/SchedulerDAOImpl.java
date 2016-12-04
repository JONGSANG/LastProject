package com.kosta.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SchedulerDAOImpl implements SchedulerDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void roomTimeOut() throws Exception {
		sqlSession.update("SchedulerMapper.roomTimeOut");
	}
}
