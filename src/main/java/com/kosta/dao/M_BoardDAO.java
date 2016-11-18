package com.kosta.dao;

import java.util.List;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;

public interface M_BoardDAO {
	
	// 본 게시물의 모든 목록 보기
	public List<M_BoardVO> listAll(M_BoardVO vo) throws Exception;
	
	// 게시물 페이징 
	public int m_listCount(M_BoardVO vo) throws Exception;

	// 본 게시물 작성
	public void create(M_BoardVO vo) throws Exception;
	
	// 본 게시물의 내용 상세보기
	public M_BoardVO read(int num) throws Exception;
	
	// 본 게시물 수정
	public void update(M_BoardVO vo) throws Exception;
	
	// 본 게시물 삭제
	public void delete(int num) throws Exception;
	
	// 댓글 삭제
	public void delete_re(int num) throws Exception;
	
	// 댓글 내용 보기
	public M_Board_ReVO read2(int num) throws Exception;
	
	// 댓글 등록
	public void insertComment(M_Board_ReVO vo2) throws Exception ;
	
	// 댓글 목록 조회
	public List<M_Board_ReVO> commentList(M_Board_ReVO vo) throws Exception;
	
	// 댓글 목록 페이징
	public int m_repAllCount(M_Board_ReVO vo) throws Exception ;

	// 댓글 수정
	public void update_re(M_Board_ReVO vo2)throws Exception;

	// 게시글 조회수 증가
	public void updateViewCnt(int num) throws Exception;
}
