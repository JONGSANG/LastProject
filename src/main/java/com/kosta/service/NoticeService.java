package com.kosta.service;

import java.util.List;
import com.kosta.vo.NoticeVO;

public interface NoticeService {

	// 게시물의 전체 목록
	public List<NoticeVO> listAll(NoticeVO vo) throws Exception;
	
	//페이징 처리
	public int n_listAllCount(NoticeVO vo) throws Exception ;

	// 본 게시물 작성
	public void regist(NoticeVO noticeVO) throws Exception;

	// 본 게시물을 상세 내용
	public NoticeVO read(int num) throws Exception;

	// 본 게시물의 수정
	public void modify(NoticeVO noticeVO) throws Exception;

	// 본 게시물 삭제
	public void remove(int num) throws Exception;
	
	// 조회수 업데이트
	public void updateViewCnt(int num) throws Exception;
}
