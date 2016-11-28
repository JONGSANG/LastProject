package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.BookVO;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.NoticeVO;

@Repository
public class LibNewsDAOImpl implements LibNewsDAO {
	////// 자유게시판 //////
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void f_create(F_BoardVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.LibNewsMapper.f_create", vo);	// F_BoardMapper의 create로 보냄
	}

	@Override
	public F_BoardVO f_read(F_BoardVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.f_read", vo);
	}

	@Override
	public F_Board_ReVO f_read2(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.f_read2", num);
	}

	@Override
	public void f_update(F_BoardVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.LibNewsMapper.f_update", vo);
	}

	@Override
	public void f_delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.LibNewsMapper.f_delete", num);
	}

	@Override
	public void f_delete_re(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.LibNewsMapper.f_delete_re", num);
	}

	@Override
	public List<F_BoardVO> f_listAll(F_BoardVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.LibNewsMapper.f_listAll",vo);
	}

	// 댓글달기
	@Override
	public void f_insertComment(F_Board_ReVO vo2) throws Exception {
		sqlSession.insert("com.kosta.mappers.LibNewsMapper.f_insertComment", vo2);
		
	}

	@Override
	public List<F_Board_ReVO> f_commentList(F_Board_ReVO vo) throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.LibNewsMapper.f_commentList", vo);
	}

	@Override
	public void f_update_re(F_Board_ReVO vo2) throws Exception {
		sqlSession.update("com.kosta.mappers.LibNewsMapper.f_update_re", vo2);
	}

	// 조회수 업데이트
	@Override
	public void f_updateViewCnt(F_BoardVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.LibNewsMapper.f_updateViewCnt", vo);
		
	}

	@Override
	public int f_listAllCount(F_BoardVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.f_listAllCount", vo);
	}

	@Override
	public int f_repAllCount(F_Board_ReVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.f_repAllCount", vo);
	}
	
	
	////// 공지사항 //////

	@Override
	public void n_create(NoticeVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.LibNewsMapper.n_create", vo);	// F_BoardMapper의 create로 보냄
	}

	@Override
	public NoticeVO n_read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.n_read", num);
	}

	@Override
	public void n_update(NoticeVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.LibNewsMapper.n_update", vo);
	}

	@Override
	public void n_delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.LibNewsMapper.n_delete", num);
	}

	@Override
	public List<NoticeVO> n_listAll(NoticeVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.LibNewsMapper.n_listAll",vo);
	}

	// 조회수 업데이트
	@Override
	public void n_updateViewCnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.LibNewsMapper.n_updateViewCnt", num);
		
	}

	@Override
	public int n_listAllCount(NoticeVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.n_listAllCount", vo);
	}

	@Override
	public BookVO munBest() {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.munBest");
	}

	@Override
	public BookVO comBest() {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.comBest");
	}

	@Override
	public BookVO socBest() {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.socBest");
	}

	@Override
	public BookVO artBest() {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.artBest");
	}

	@Override
	public BookVO youngBest() {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.youngBest");
	}

	@Override
	public BookVO ganBest() {
		return sqlSession.selectOne("com.kosta.mappers.LibNewsMapper.ganBest");
	}
}
