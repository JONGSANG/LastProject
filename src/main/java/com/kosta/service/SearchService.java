package com.kosta.service;

import java.util.List;

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

}
