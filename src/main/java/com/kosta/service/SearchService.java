package com.kosta.service;

import java.util.List;

import com.kosta.vo.HopeVO;
import com.kosta.vo.Hope_repVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.ReserveVO;
import com.kosta.vo.SearchVO;



public interface SearchService {
	// 도서 상세 정보 보기
	public SearchVO readInfo(String bNo)throws Exception;
	// 도서 검색 결과
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception;
	// 신착 도서 검색 결과
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception;
	
	// 신착 도서 결과 페이징 처리를 위한 검색 갯수
	public int listNSearchCount(SearchVO vo) throws Exception;
	// 도서 검색 결과 페이징 처리를 위한 검색 갯수
	public int listBSearchCount(SearchVO vo) throws Exception;

	// 연속 간행물의 모든 목록
	public List<SearchVO> p_listAll(SearchVO vo) throws Exception;
	// 연속 간행물의 모든 목록 중 하나를 선택하였을 때 그 종류의 목록
	public List<SearchVO> p_listOneAll(SearchVO vo) throws Exception;
	
	// 연속 간행물 모든 목록의 페이징 처리를 위한 목록 갯수
	public int listCount(PageInfo pageInfo) throws Exception;
	// 연속 간행물 목록 중 세부 목록의 페이징 처리를 위한 목록 갯수
	public int resultCount(PageInfo pageInfo) throws Exception;
///////////////////////////
	

	// 게시물의 전체 목록
	public List<HopeVO> listAll(HopeVO vo) throws Exception;
	
	// 게시물의 전체 목록 페이징
	public int f_listAllCount(HopeVO vo) throws Exception;
	
	// 본 게시물 작성
	public void regist(HopeVO vo) throws Exception;

	// 본 게시물을 상세 내용
	public HopeVO read(HopeVO vo) throws Exception;

	// 본 게시물의 수정
	public void modify(HopeVO vo) throws Exception;

	// 본 게시물 삭제
	public void remove(int num) throws Exception;

	// 게시물 내용의 댓글 목록
	public List<Hope_repVO> commentList(Hope_repVO vo) throws Exception;

	// 게시물 댓글을 페이징
	public int f_repAllCount(Hope_repVO vo) throws Exception;

	//  게시물 내용의 댓글 등록
	public void insertComment(Hope_repVO vo2) throws Exception;
	
	// 게시물 내용의 댓글 내용 보기
	public Hope_repVO read2(int num) throws Exception;
	
	// 게시물 내용의 댓글 수정
	public void update_re(Hope_repVO board) throws Exception;
	
	// 게시물 내용의 댓글 삭제
	public void remove_re(int num) throws Exception;
	
	// 조회수 업데이트
	public void updateViewCnt(HopeVO vo) throws Exception;
	// 대출예약
	public void reserve(ReserveVO vo) throws Exception;

	// 장애여부 확인
	public int checkUser(String id) throws Exception;
}
