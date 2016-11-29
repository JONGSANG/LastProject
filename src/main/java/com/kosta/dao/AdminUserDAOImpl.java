package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.MemberVO;

@Repository
public class AdminUserDAOImpl implements AdminUserDAO {

	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<String> allMember() throws Exception {
		return sqlSession.selectList("AdminUserMapper.allMember");
	}

	@Override
	public List<String> allAdmin() throws Exception {
		return sqlSession.selectList("AdminUserMapper.allAdmin");
	}
}
