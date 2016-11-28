package com.kosta.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminUserDAOImpl implements AdminUserDAO {

	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String[] allMember() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
