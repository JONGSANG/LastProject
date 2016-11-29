package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminUserDAOImpl implements AdminUserDAO {

	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String[] allMember() throws Exception {
		return null;//sqlSession.selectList("AdminUserMapper.allMember");
	}
}
