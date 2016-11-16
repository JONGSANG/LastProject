package com.kosta.dao;

import java.util.List;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;

public interface F_BoardDAO {
	
	// 본 게시물의 모든 목록 보기
	public List<F_BoardVO> listAll() throws Exception;
	
	// 본 게시물 작성
	public void create(F_BoardVO vo) throws Exception;
	
	// 본 게시물의 내용 상세보기
	public F_BoardVO read(int num) throws Exception;
	
	// 본 게시물 수정
	public void update(F_BoardVO vo) throws Exception;
	
	// 본 게시물 삭제
	public void delete(int num) throws Exception;
	
	// 댓글 삭제
	public void delete_re(int num) throws Exception;
	
	// 댓글 내용 보기
	public F_Board_ReVO read2(int num) throws Exception;
	
	// 댓글 등록
	public void insertComment(F_Board_ReVO vo2) throws Exception ;
	
	// 댓글 목록 조회
	public List<F_Board_ReVO> commentList(int num) throws Exception;
	
	// 댓글 수정
	public void update_re(F_Board_ReVO vo2)throws Exception;
	
	// 댓글 조회수 증가
	public void updateViewCnt(int num) throws Exception;
}
