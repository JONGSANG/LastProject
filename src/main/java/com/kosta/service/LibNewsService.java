package com.kosta.service;

import java.util.List;

import com.kosta.vo.BookVO;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.NoticeVO;

public interface LibNewsService {
	
		////// 자유게시판 //////
		// 게시물의 전체 목록
		public List<F_BoardVO> f_listAll(F_BoardVO vo) throws Exception;
		
		// 게시물의 전체 목록 페이징
		public int f_listAllCount(F_BoardVO vo) throws Exception;
		
		// 본 게시물 작성
		public void f_regist(F_BoardVO board) throws Exception;

		// 본 게시물을 상세 내용
		public F_BoardVO f_read(F_BoardVO vo) throws Exception;

		// 본 게시물의 수정
		public void f_modify(F_BoardVO f_board) throws Exception;

		// 본 게시물 삭제
		public void f_remove(int num) throws Exception;

		// 게시물 내용의 댓글 목록
		public List<F_Board_ReVO> f_commentList(F_Board_ReVO vo) throws Exception;

		// 게시물 댓글을 페이징
		public int f_repAllCount(F_Board_ReVO vo) throws Exception;

		//  게시물 내용의 댓글 등록
		public void f_insertComment(F_Board_ReVO vo2) throws Exception;
		
		// 게시물 내용의 댓글 내용 보기
		public F_Board_ReVO f_read2(int num) throws Exception;
		
		// 게시물 내용의 댓글 수정
		public void f_update_re(F_Board_ReVO board) throws Exception;
		
		// 게시물 내용의 댓글 삭제
		public void f_remove_re(int num) throws Exception;
		
		// 조회수 업데이트
		public void f_updateViewCnt(F_BoardVO vo) throws Exception;
		
		
		////// 공지사항 //////
		// 게시물의 전체 목록
		public List<NoticeVO> n_listAll(NoticeVO vo) throws Exception;
		
		//페이징 처리
		public int n_listAllCount(NoticeVO vo) throws Exception ;

		// 본 게시물 작성
		public void n_regist(NoticeVO noticeVO) throws Exception;

		// 본 게시물을 상세 내용
		public NoticeVO n_read(int num) throws Exception;

		// 본 게시물의 수정
		public void n_modify(NoticeVO noticeVO) throws Exception;

		// 본 게시물 삭제
		public void n_remove(int num) throws Exception;
		
		// 조회수 업데이트
		public void n_updateViewCnt(int num) throws Exception;
		
		// 도서 대출 베스트
		//문학베스트도서
		public BookVO munBest();
		//컴퓨터베스트도서
		public BookVO comBest();
		//사회베스트도서
		public BookVO socBest();
		//예술베스트도서
		public BookVO artBest();
		//어린이베스트도서
		public BookVO youngBest();
		//간행물베스트도서
		public BookVO ganBest();
		
		
}
