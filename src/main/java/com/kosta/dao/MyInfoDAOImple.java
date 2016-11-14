package com.kosta.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.MemberVO;

@Repository
public class MyInfoDAOImple implements MyInfoDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public MemberVO myInfo(MemberVO vo) throws Exception {
		return sqlSession.selectOne("MyInfoMapper.myInfo", vo);
	}

}
