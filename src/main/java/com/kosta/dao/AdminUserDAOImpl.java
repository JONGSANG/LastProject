package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.LateVO;
import com.kosta.vo.MailVO;
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

	@Override
	public List<LateVO> selectLateUserList(LateVO vo) {
		return sqlSession.selectList("AdminUserMapper.selectLateUserList",vo);
	}

	@Override
	public List<String> lateUser() throws Exception {
		return sqlSession.selectList("AdminUserMapper.allAdmin");
	}

	@Override
	public int countLateUserList(LateVO vo) {
		return sqlSession.selectOne("AdminUserMapper.countLateUserList",vo);
	}
}
