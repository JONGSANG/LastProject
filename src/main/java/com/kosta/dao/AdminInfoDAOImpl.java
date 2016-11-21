package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.MemberVO;

@Repository
public class AdminInfoDAOImpl implements AdminInfoDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MemberVO> userList() throws Exception {
		
		return null;
	}

	@Override
	@Transactional
	public void addAdmin(MemberVO vo) throws Exception {
		sqlSession.insert("AdminInfoMapper.member", vo);
		sqlSession.insert("AdminInfoMapper.admin_info", vo);
		sqlSession.insert("AdminInfoMapper.role", vo);
	}

}
