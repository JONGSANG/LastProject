package com.kosta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.M_BoardDAO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;

@Service // 이 페이지가 Service라는 것을 알려줌
public class M_BoardServiceImpl implements M_BoardService {

	@Inject
	private M_BoardDAO m_boardDao;

	// 게시물을 담을 vo가 필요하다.
	@Override
	public void regist(M_BoardVO m_board) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		m_board.setId(auth.getName());
		m_boardDao.create(m_board);
	}

	// 어떤 게시물을 상세보기 하기 위해선 num
	@Override
	public M_BoardVO read(int num) throws Exception {
		return m_boardDao.read(num);
	}

	// 수정하기 위해 vo 필요하다.
	@Override
	public void modify(M_BoardVO board) throws Exception {
		m_boardDao.update(board);
	}

	// 삭제할 게시물의 번호가 필요하다.
	@Override
	public void remove(int num) throws Exception {
		m_boardDao.delete(num);
	}

	// list 형태로 모든 list 출력
	@Override
	public List<M_BoardVO> listAll() throws Exception {
		return m_boardDao.listAll();
	}

	// 댓글을 담을 vo2가 필요하다.

	@Override
	public void insertComment(M_Board_ReVO vo2) throws Exception {
		m_boardDao.insertComment(vo2);
	}

	// 등록한 댓글을 보기 위해서

	@Override
	public M_Board_ReVO read2(int num) throws Exception {
		return m_boardDao.read2(num);
	}

	@Override
	public void remove_re(int num) throws Exception {
		m_boardDao.delete_re(num);
	}

	@Override
	public List<M_Board_ReVO> commentList(int num) throws Exception {
		return m_boardDao.commentList(num);
	}

	@Override
	public void update_re(M_Board_ReVO board) throws Exception {
		m_boardDao.update_re(board);

	}

	// 조회수 업데이트
	@Override
	public void updateViewCnt(int num) throws Exception {
		m_boardDao.updateViewCnt(num);
	}

}
