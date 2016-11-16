package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.SearchDAO;
import com.kosta.vo.SearchVO;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	private SearchDAO SearchDAO;

	@Override
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception {
		return SearchDAO.b_searchResult(vo);
	}
	
	@Override
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception {
		return SearchDAO.n_searchResult(vo);
	}

	@Override
	public SearchVO readInfo(String bNo) throws Exception {
		return SearchDAO.readInfo(bNo);
	}

	@Override
	public int listNSearchCount(SearchVO vo) throws Exception {
		return SearchDAO.listNSearchCount(vo);
	}

	@Override
	public int listBSearchCount(SearchVO vo) throws Exception {
		return SearchDAO.listBSearchCount(vo);
	}
	
	

}
