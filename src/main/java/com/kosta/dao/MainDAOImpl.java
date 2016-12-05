package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.NoticeVO;
import com.kosta.vo.SchadulVO;

@Repository
public class MainDAOImpl implements MainDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MemberVO getName(String id) throws Exception {
		
		return sqlSession.selectOne("MainMapper.getName", id);
	}

	@Override
	public List<NoticeVO> noticeList() throws Exception {
		
		return sqlSession.selectList("MainMapper.n_listAll");
	}

	@Override
	public List<F_BoardVO> f_boardList() throws Exception {
		return sqlSession.selectList("MainMapper.f_listAll");
	}

	@Override
	public List<M_BoardVO> m_boardList() throws Exception {
		return sqlSession.selectList("MainMapper.m_listAll");
	}


	@Override
	public List<SchadulVO> scheduleList() throws Exception {
		return sqlSession.selectList("MainMapper.scheduleList");
	}

	@Override
	public MemberVO getNamead(String id) throws Exception {
		
		return sqlSession.selectOne("MainMapper.getNamead", id);
	}
	
}
