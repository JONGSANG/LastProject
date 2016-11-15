package com.kosta.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	@Transactional
	public void memberJoin(MemberVO vo) throws Exception {
		sqlsession.insert("MemberMapper.member" , vo);
		sqlsession.insert("MemberMapper.user_info" , vo);
		sqlsession.insert("MemberMapper.role", vo.getId());
	}
}
