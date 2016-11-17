package com.kosta.service;

import java.util.List;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;

public interface M_BoardService {

	// 게시물의 전체 목록
	public List<M_BoardVO> listAll() throws Exception;
	
	// 본 게시물 작성
	public void regist(M_BoardVO board) throws Exception;

	// 본 게시물을 상세 내용
	public M_BoardVO read(int num) throws Exception;

	// 본 게시물의 수정
	public void modify(M_BoardVO m_board) throws Exception;

	// 본 게시물 삭제
	public void remove(int num) throws Exception;

	// 게시물 내용의 댓글 목록
	public List<M_Board_ReVO> commentList(int num) throws Exception;

	//  게시물 내용의 댓글 등록
	public void insertComment(M_Board_ReVO vo2) throws Exception;
	
	// 게시물 내용의 댓글 내용 보기
	public M_Board_ReVO read2(int num) throws Exception;
	
	// 게시물 내용의 댓글 수정
	public void update_re(M_Board_ReVO board) throws Exception;
	
	// 게시물 내용의 댓글 삭제
	public void remove_re(int num) throws Exception;
	
	// 조회수 업데이트
	public void updateViewCnt(int num) throws Exception;
}
