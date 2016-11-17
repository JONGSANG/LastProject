package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.PageInfo;

@Repository
public class F_BoardDAOImpl implements F_BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void create(F_BoardVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.libNewsMapper.f_create", vo);	// F_BoardMapper의 create로 보냄
	}

	@Override
	public F_BoardVO read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.libNewsMapper.f_read", num);
	}

	@Override
	public F_Board_ReVO read2(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.kosta.mappers.libNewsMapper.f_read2", num);
	}

	@Override
	public void update(F_BoardVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.libNewsMapper.f_update", vo);
	}

	@Override
	public void delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.libNewsMapper.f_delete", num);
	}

	@Override
	public void delete_re(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.libNewsMapper.f_delete_re", num);
	}

	@Override
	public List<F_BoardVO> listAll(F_BoardVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.libNewsMapper.f_listAll",vo);
	}

	// 댓글달기
	@Override
	public void insertComment(F_Board_ReVO vo2) throws Exception {
		sqlSession.insert("com.kosta.mappers.libNewsMapper.f_insertComment", vo2);
		
	}

	@Override
	public List<F_Board_ReVO> commentList(F_Board_ReVO vo) throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.libNewsMapper.f_commentList", vo);
	}

	@Override
	public void update_re(F_Board_ReVO vo2) throws Exception {
		sqlSession.update("com.kosta.mappers.libNewsMapper.f_update_re", vo2);
	}

	// 조회수 업데이트
	@Override
	public void updateViewCnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.libNewsMapper.f_updateViewCnt", num);
		
	}

	@Override
	public int f_listAllCount(F_BoardVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.libNewsMapper.f_listAllCount", vo);
	}

	@Override
	public int f_repAllCount(F_Board_ReVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.libNewsMapper.f_repAllCount", vo);
	}
}
