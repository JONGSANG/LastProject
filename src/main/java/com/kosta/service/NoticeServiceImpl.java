package com.kosta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.NoticeDAO;
import com.kosta.vo.NoticeVO;

@Service	// 이 페이지가 Service라는 것을 알려줌
public class NoticeServiceImpl implements NoticeService {
	
	@Inject
	private NoticeDAO noticeDao;

	// 게시물을 담을 vo가 필요하다.
	@Override
	public void regist(NoticeVO noticeVO) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		noticeVO.setId(auth.getName());
		noticeDao.create(noticeVO);
	}

	// 어떤 게시물을 상세보기 하기 위해선 num
	@Override
	public NoticeVO read(int num) throws Exception {
		return noticeDao.read(num);
	}

	// 수정하기 위해 vo 필요하다.
	@Override
	public void modify(NoticeVO noticeVO) throws Exception {
		noticeDao.update(noticeVO);
	}

	// 삭제할 게시물의 번호가 필요하다.
	@Override
	public void remove(int num) throws Exception {
		noticeDao.delete(num);
	}

	// list 형태로 모든 list 출력
	@Override
	public List<NoticeVO> listAll(NoticeVO vo) throws Exception {
		return noticeDao.listAll(vo);
	}

	// 조회수 업데이트
	@Override
	public void updateViewCnt(int num) throws Exception {
		noticeDao.updateViewCnt(num);
	}

	@Override
	public int n_listAllCount(NoticeVO vo) throws Exception {
		return 	noticeDao.n_listAllCount(vo);

	}
	
}
