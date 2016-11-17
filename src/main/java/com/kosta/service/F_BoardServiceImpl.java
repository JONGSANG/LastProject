package com.kosta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.F_BoardDAO;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.PageInfo;

@Service	// 이 페이지가 Service라는 것을 알려줌
public class F_BoardServiceImpl implements F_BoardService {
	
	@Inject
	private F_BoardDAO f_boardDao;

	// 게시물을 담을 vo가 필요하다.
	@Override
	public void regist(F_BoardVO f_board) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		f_board.setId(auth.getName());
		f_boardDao.create(f_board);
	}

	// 어떤 게시물을 상세보기 하기 위해선 num
	@Override
	public F_BoardVO read(int num) throws Exception {
		return f_boardDao.read(num);
	}

	// 등록한 댓글을 보기 위해서
	@Override
	public F_Board_ReVO read2(int num) throws Exception {
		return f_boardDao.read2(num);
	}

	// 수정하기 위해 vo 필요하다.
	@Override
	public void modify(F_BoardVO board) throws Exception {
		f_boardDao.update(board);
	}

	// 삭제할 게시물의 번호가 필요하다.
	@Override
	public void remove(int num) throws Exception {
		f_boardDao.delete(num);
	}
	
	@Override
	public void remove_re(int num) throws Exception {
		f_boardDao.delete_re(num);
	}

	// list 형태로 모든 list 출력
	@Override
	public List<F_BoardVO> listAll(F_BoardVO vo) throws Exception {
		return f_boardDao.listAll(vo);
	}

	// 댓글을 담을 vo2가 필요하다.
	@Override
	public void insertComment(F_Board_ReVO vo2) throws Exception {
		f_boardDao.insertComment(vo2);
	}

	@Override
	public List<F_Board_ReVO> commentList(F_Board_ReVO vo) throws Exception {
		return f_boardDao.commentList(vo);
	}

	@Override
	public void update_re(F_Board_ReVO board) throws Exception {
		f_boardDao.update_re(board);
		
	}

	// 조회수 업데이트
	@Override
	public void updateViewCnt(int num) throws Exception {
		f_boardDao.updateViewCnt(num);
	}

	// 글 페이징
	@Override
	public int f_listAllCount(F_BoardVO vo) throws Exception {
		return f_boardDao.f_listAllCount(vo);
	}
	// 댓글 페이징
	@Override
	public int f_repAllCount(F_Board_ReVO vo) throws Exception {
		return f_boardDao.f_repAllCount(vo);
	}

	
}
