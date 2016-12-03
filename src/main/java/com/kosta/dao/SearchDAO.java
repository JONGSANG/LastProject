package com.kosta.dao;

import java.util.List;

import com.kosta.vo.HopeVO;
import com.kosta.vo.Hope_repVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.ReserveVO;
import com.kosta.vo.SearchVO;

public interface SearchDAO {
	
	//상세보기 페이지에서 정보 읽어오는 메소드
	public SearchVO readInfo(String bNo)throws Exception;
	
//	public BookVO search(String select, String value) throws Exception;
	// 통합 검색 메소드
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception; 
	// 기간 검색 메소드
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception; 

	// 신착 도서 목록의 페이징 처리를 위한 메소드
	public int listNSearchCount(SearchVO vo) throws Exception;
	// 도서 검색 목록의 페이징 처리를 위한 메소드
	public int listBSearchCount(SearchVO vo) throws Exception;
	
	// 모든 연속 간행물 list 메소드
	public List<SearchVO> p_listAll(SearchVO vo) throws Exception; 
	// 모든 연속 간행물 중 하나의 세부 간행물 list 메소드
	public List<SearchVO> p_listOneAll(SearchVO vo) throws Exception; 

	public int listCount(PageInfo pageInfo) throws Exception;
	public int resultCount(PageInfo pageInfo) throws Exception;

	//////////////////////
	

	// 본 게시물의 모든 목록 보기
	public List<HopeVO> listAll(HopeVO vo) throws Exception;
	
	// 본 게시물의 목록 보기 페이징
	public int f_listAllCount(HopeVO vo) throws Exception;

	// 본 게시물 작성
	public void create(HopeVO vo) throws Exception;
	
	// 본 게시물의 내용 상세보기
	public HopeVO read(HopeVO vo) throws Exception;
	
	// 본 게시물 수정
	public void update(HopeVO vo) throws Exception;
	
	// 본 게시물 삭제
	public void delete(int num) throws Exception;
	
	// 댓글 삭제
	public void delete_re(int num) throws Exception;
	
	// 댓글 내용 보기
	public Hope_repVO read2(int num) throws Exception;
	
	// 댓글 페이징
	public int f_repAllCount(Hope_repVO vo) throws Exception;

	// 댓글 등록
	public void insertComment(Hope_repVO vo2) throws Exception ;
	
	// 댓글 목록 조회
	public List<Hope_repVO> commentList(Hope_repVO vo) throws Exception;
	
	// 댓글 수정
	public void update_re(Hope_repVO vo2)throws Exception;

	// 게시글 조회수 증가
	public void updateViewCnt(HopeVO vo) throws Exception;
	
	// 대출예약
	public void reserve(ReserveVO vo) throws Exception;
	// 장애여부 확인
	public int checkUser(String id) throws Exception;
}
