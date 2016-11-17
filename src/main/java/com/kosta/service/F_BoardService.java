package com.kosta.service;

import java.util.List;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.PageInfo;

public interface F_BoardService {

	// 게시물의 전체 목록
	public List<F_BoardVO> listAll(F_BoardVO vo) throws Exception;
	
	// 게시물의 전체 목록 페이징
	public int f_listAllCount(F_BoardVO vo) throws Exception;
	
	// 본 게시물 작성
	public void regist(F_BoardVO board) throws Exception;

	// 본 게시물을 상세 내용
	public F_BoardVO read(int num) throws Exception;

	// 본 게시물의 수정
	public void modify(F_BoardVO f_board) throws Exception;

	// 본 게시물 삭제
	public void remove(int num) throws Exception;

	// 게시물 내용의 댓글 목록
	public List<F_Board_ReVO> commentList(F_Board_ReVO vo) throws Exception;

	// 게시물 댓글을 페이징
	public int f_repAllCount(F_Board_ReVO vo) throws Exception;

	//  게시물 내용의 댓글 등록
	public void insertComment(F_Board_ReVO vo2) throws Exception;
	
	// 게시물 내용의 댓글 내용 보기
	public F_Board_ReVO read2(int num) throws Exception;
	
	// 게시물 내용의 댓글 수정
	public void update_re(F_Board_ReVO board) throws Exception;
	
	// 게시물 내용의 댓글 삭제
	public void remove_re(int num) throws Exception;
	
	// 조회수 업데이트
	public void updateViewCnt(int num) throws Exception;
}
