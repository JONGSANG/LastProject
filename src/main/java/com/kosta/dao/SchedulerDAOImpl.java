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

	@Override
	public void reserveDel() throws Exception {
		sqlSession.delete("SchedulerMapper.reserveDel");
	}
	
	@Override
	public void updateLate() throws Exception {
		sqlSession.update("MainMapper.updateLate");
	}

	@Override
	public void insertLate() throws Exception {
		sqlSession.insert("MainMapper.insertLate");
	}

	@Override
	public void updateRent() throws Exception {
		sqlSession.update("MainMapper.updateRent");
	}

}
