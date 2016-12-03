package com.kosta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.LibNewsDAO;
import com.kosta.vo.BookVO;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.NoticeVO;
import com.kosta.vo.SchadulVO;

@Service
public class LibNewsServiceImpl implements LibNewsService {
	////// 자유게시판 //////
	@Inject
	private LibNewsDAO libNewsDAO;

	// 게시물을 담을 vo가 필요하다.
	@Override
	public void f_regist(F_BoardVO f_board) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		f_board.setId(auth.getName());
		libNewsDAO.f_create(f_board);
	}

	// 어떤 게시물을 상세보기 하기 위해선 num
	@Override
	public F_BoardVO f_read(F_BoardVO vo) throws Exception {
		return libNewsDAO.f_read(vo);
	}

	// 등록한 댓글을 보기 위해서
	@Override
	public F_Board_ReVO f_read2(int num) throws Exception {
		return libNewsDAO.f_read2(num);
	}

	// 수정하기 위해 vo 필요하다.
	@Override
	public void f_modify(F_BoardVO board) throws Exception {
		libNewsDAO.f_update(board);
	}

	// 삭제할 게시물의 번호가 필요하다.
	@Override
	public void f_remove(int num) throws Exception {
		libNewsDAO.f_delete(num);
	}
	
	@Override
	public void f_remove_re(int num) throws Exception {
		libNewsDAO.f_delete_re(num);
	}

	// list 형태로 모든 list 출력
	@Override
	public List<F_BoardVO> f_listAll(F_BoardVO vo) throws Exception {
		return libNewsDAO.f_listAll(vo);
	}

	// 댓글을 담을 vo2가 필요하다.
	@Override
	public void f_insertComment(F_Board_ReVO vo2) throws Exception {
		libNewsDAO.f_insertComment(vo2);
	}

	@Override
	public List<F_Board_ReVO> f_commentList(F_Board_ReVO vo) throws Exception {
		return libNewsDAO.f_commentList(vo);
	}

	@Override
	public void f_update_re(F_Board_ReVO board) throws Exception {
		libNewsDAO.f_update_re(board);
		
	}

	// 조회수 업데이트
	@Override
	public void f_updateViewCnt(F_BoardVO vo) throws Exception {
		libNewsDAO.f_updateViewCnt(vo);
	}

	// 글 페이징
	@Override
	public int f_listAllCount(F_BoardVO vo) throws Exception {
		return libNewsDAO.f_listAllCount(vo);
	}
	// 댓글 페이징
	@Override
	public int f_repAllCount(F_Board_ReVO vo) throws Exception {
		return libNewsDAO.f_repAllCount(vo);
	}
	
	
	
	////// 공지사항 //////

	// 게시물을 담을 vo가 필요하다.
	@Override
	public void n_regist(NoticeVO noticeVO) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		noticeVO.setId(auth.getName());
		libNewsDAO.n_create(noticeVO);
	}

	// 어떤 게시물을 상세보기 하기 위해선 num
	@Override
	public NoticeVO n_read(int num) throws Exception {
		return libNewsDAO.n_read(num);
	}

	// 수정하기 위해 vo 필요하다.
	@Override
	public void n_modify(NoticeVO noticeVO) throws Exception {
		libNewsDAO.n_update(noticeVO);
	}

	// 삭제할 게시물의 번호가 필요하다.
	@Override
	public void n_remove(int num) throws Exception {
		libNewsDAO.n_delete(num);
	}

	// list 형태로 모든 list 출력
	@Override
	public List<NoticeVO> n_listAll(NoticeVO vo) throws Exception {
		return libNewsDAO.n_listAll(vo);
	}

	// 조회수 업데이트
	@Override
	public void n_updateViewCnt(int num) throws Exception {
		libNewsDAO.n_updateViewCnt(num);
	}

	@Override
	public int n_listAllCount(NoticeVO vo) throws Exception {
		return 	libNewsDAO.n_listAllCount(vo);

	}

	@Override
	public BookVO munBest() {
		return libNewsDAO.munBest();
	}

	@Override
	public BookVO comBest() {
		return libNewsDAO.comBest();
	}

	@Override
	public BookVO socBest() {
		return libNewsDAO.socBest();
	}

	@Override
	public BookVO artBest() {
		return libNewsDAO.artBest();
	}

	@Override
	public BookVO youngBest() {
		return libNewsDAO.youngBest();
	}

	@Override
	public BookVO ganBest() {
		return libNewsDAO.ganBest();
	}
	
	@Override
	public List<SchadulVO> schadule_list() throws Exception {
		return libNewsDAO.schadule_list();
	}
}
