package com.kosta.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	@Transactional
	public void memberJoin(MemberVO vo) throws Exception {
		sqlSession.insert("MemberMapper.member" , vo);
		sqlSession.insert("MemberMapper.user_info" , vo);
		sqlSession.insert("MemberMapper.role", vo.getId());
	}

	@Override
	public MemberVO findId(MemberVO vo) throws Exception {
		return sqlSession.selectOne("MemberMapper.findId", vo);
	}

	@Override
	public MemberVO findPassword(MemberVO vo) throws Exception {
		return sqlSession.selectOne("MemberMapper.findPassword", vo);
	}

	@Override
	public void passwordEmail(MemberVO vo) throws Exception {
		sqlSession.update("MemberMapper.passwordEmail", vo);
	}
}
