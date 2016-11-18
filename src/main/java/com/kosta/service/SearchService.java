package com.kosta.service;

import java.util.List;

import com.kosta.vo.HopeVO;
import com.kosta.vo.Hope_repVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SearchVO;



public interface SearchService {
	public SearchVO readInfo(String bNo)throws Exception;
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception;
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception;
	
	
	
	public int listNSearchCount(SearchVO vo) throws Exception;
	public int listBSearchCount(SearchVO vo) throws Exception;

	
	
	public List<SearchVO> p_listAll(SearchVO vo) throws Exception;
	public List<SearchVO> p_listOneAll(SearchVO vo) throws Exception;

	public int listCount(PageInfo pageInfo) throws Exception;
	public int resultCount(PageInfo pageInfo) throws Exception;
///////////////////////////
	

	// 게시물의 전체 목록
	public List<HopeVO> listAll(HopeVO vo) throws Exception;
	
	// 게시물의 전체 목록 페이징
	public int f_listAllCount(HopeVO vo) throws Exception;
	
	// 본 게시물 작성
	public void regist(HopeVO vo) throws Exception;

	// 본 게시물을 상세 내용
	public HopeVO read(int num) throws Exception;

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
	public void updateViewCnt(int num) throws Exception;
}
