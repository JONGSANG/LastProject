package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;

@Repository
public class M_BoardDAOImpl implements M_BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void create(M_BoardVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.m_create", vo);	// ServiceMapper의 create로 보냄
	}

	@Override
	public M_BoardVO read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_read", num);
	}

	@Override
	public void update(M_BoardVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.m_update", vo);
	}

	@Override
	public void delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.m_delete", num);
	}

	@Override
	public List<M_BoardVO> listAll(M_BoardVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.m_listAll",vo);
	}

	

	@Override
	public M_Board_ReVO read2(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_read2", num);
	}
	
	@Override
	public void delete_re(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.m_delete_re", num);
	}
	
	@Override
	public void insertComment(M_Board_ReVO vo2) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.m_insertComment", vo2);
		
	}

	@Override
	public List<M_Board_ReVO> commentList(M_Board_ReVO vo) throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.m_commentList", vo);
	}

	@Override
	public void update_re(M_Board_ReVO vo2) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.m_update_re", vo2);
	}

	// 조회수 업데이트
	@Override
	public void updateViewCnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.m_updateViewCnt", num);
		
	}

	@Override
	public int m_listCount(M_BoardVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_listCount", vo);
	}

	@Override
	public int m_repAllCount(M_Board_ReVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_repAllCount", vo);
	}
}
