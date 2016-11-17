package com.kosta.dao;

import java.util.List;
import com.kosta.vo.NoticeVO;

public interface NoticeDAO {
	
	// 본 게시물의 모든 목록 보기
	public List<NoticeVO> listAll(NoticeVO vo) throws Exception;
	
	// 게시물 페이징 처리
	public int n_listAllCount(NoticeVO vo) throws Exception;
	
	// 본 게시물 작성
	public void create(NoticeVO vo) throws Exception;
	
	// 본 게시물의 내용 상세보기
	public NoticeVO read(int num) throws Exception;
	
	// 본 게시물 수정
	public void update(NoticeVO vo) throws Exception;
	
	// 본 게시물 삭제
	public void delete(int num) throws Exception;

	// 게시글 조회수 증가
	public void updateViewCnt(int num) throws Exception;
}
