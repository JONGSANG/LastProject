package com.kosta.dao;

import java.util.List;

import com.kosta.vo.BookVO;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.NoticeVO;
import com.kosta.vo.SchadulVO;

public interface LibNewsDAO {

	////// 자유게시판 //////

	// 본 게시물의 모든 목록 보기
	public List<F_BoardVO> f_listAll(F_BoardVO vo) throws Exception;

	// 본 게시물의 목록 보기 페이징
	public int f_listAllCount(F_BoardVO vo) throws Exception;

	// 본 게시물 작성
	public void f_create(F_BoardVO vo) throws Exception;

	// 본 게시물의 내용 상세보기
	public F_BoardVO f_read(F_BoardVO vo) throws Exception;

	// 본 게시물 수정
	public void f_update(F_BoardVO vo) throws Exception;

	// 본 게시물 삭제
	public void f_delete(int num) throws Exception;

	// 댓글 삭제
	public void f_delete_re(int num) throws Exception;

	// 댓글 내용 보기
	public F_Board_ReVO f_read2(int num) throws Exception;

	// 댓글 페이징
	public int f_repAllCount(F_Board_ReVO vo) throws Exception;

	// 댓글 등록
	public void f_insertComment(F_Board_ReVO vo2) throws Exception;

	// 댓글 목록 조회
	public List<F_Board_ReVO> f_commentList(F_Board_ReVO vo) throws Exception;

	// 댓글 수정
	public void f_update_re(F_Board_ReVO vo2) throws Exception;

	// 게시글 조회수 증가
	public void f_updateViewCnt(F_BoardVO vo) throws Exception;

	////// 공지사항 //////

	// 본 게시물의 모든 목록 보기
	public List<NoticeVO> n_listAll(NoticeVO vo) throws Exception;

	// 게시물 페이징 처리
	public int n_listAllCount(NoticeVO vo) throws Exception;

	// 본 게시물 작성
	public void n_create(NoticeVO vo) throws Exception;

	// 본 게시물의 내용 상세보기
	public NoticeVO n_read(int num) throws Exception;

	// 본 게시물 수정
	public void n_update(NoticeVO vo) throws Exception;

	// 본 게시물 삭제
	public void n_delete(int num) throws Exception;

	// 게시글 조회수 증가
	public void n_updateViewCnt(int num) throws Exception;

	// 도서 대출 베스트
	// 문학베스트도서
	public BookVO munBest();

	// 컴퓨터베스트도서
	public BookVO comBest();

	// 사회베스트도서
	public BookVO socBest();

	// 예술베스트도서
	public BookVO artBest();

	// 어린이베스트도서
	public BookVO youngBest();

	// 간행물베스트도서
	public BookVO ganBest();
	
	//----------------------스케줄--------------------------
	
		//스케줄 리스트 메소드
		public List<SchadulVO> schadule_list() throws Exception;

}
