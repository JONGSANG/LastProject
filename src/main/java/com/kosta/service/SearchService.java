package com.kosta.service;

import java.util.List;

import com.kosta.vo.SearchVO;



public interface SearchService {
	public SearchVO readInfo(String bNo)throws Exception;
//	public List<BookVO> listAll() throws Exception;
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception;
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception;
	
	
	
	public int listNSearchCount(SearchVO vo) throws Exception;
	public int listBSearchCount(SearchVO vo) throws Exception;

}
