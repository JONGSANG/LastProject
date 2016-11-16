package com.kosta.dao;

import java.util.List;

import com.kosta.vo.SearchVO;

public interface SearchDAO {
	
	public SearchVO readInfo(String bNo)throws Exception;//상세보기 페이지에서 정보 읽어오는 메소드
	
	
	
/*	public List<BookVO> listAll() throws Exception; 
*/
//	public BookVO search(String select, String value) throws Exception;
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception; //통합 검색 메소드
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception; //기간 검색 메소드

	
	public int listNSearchCount(SearchVO vo) throws Exception;
	public int listBSearchCount(SearchVO vo) throws Exception;

}
