package com.kosta.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.MemberVO;

@Repository
public class MainDAOImpl implements MainDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MemberVO getName(String id) throws Exception {
		
		return sqlSession.selectOne("MainMapper.getName", id);
	}
	
}
