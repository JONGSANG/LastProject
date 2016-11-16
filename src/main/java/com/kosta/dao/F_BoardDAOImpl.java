package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;

@Repository
public class F_BoardDAOImpl implements F_BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void create(F_BoardVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.F_BoardMapper.create", vo);	// F_BoardMapper의 create로 보냄
	}

	@Override
	public F_BoardVO read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.F_BoardMapper.read", num);
	}

	@Override
	public F_Board_ReVO read2(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.kosta.mappers.F_BoardMapper.read2", num);
	}

	@Override
	public void update(F_BoardVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.F_BoardMapper.update", vo);
	}

	@Override
	public void delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.F_BoardMapper.delete", num);
	}

	@Override
	public void delete_re(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.F_BoardMapper.delete_re", num);
	}

	@Override
	public List<F_BoardVO> listAll() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.F_BoardMapper.listAll");
	}

	// 댓글달기
	@Override
	public void insertComment(F_Board_ReVO vo2) throws Exception {
		sqlSession.insert("com.kosta.mappers.F_BoardMapper.insertComment", vo2);
		
	}

	@Override
	public List<F_Board_ReVO> commentList(int num) throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.F_BoardMapper.commentList", num);
	}

	@Override
	public void update_re(F_Board_ReVO vo2) throws Exception {
		sqlSession.update("com.kosta.mappers.F_BoardMapper.update_re", vo2);
	}
}
