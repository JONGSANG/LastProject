package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SearchVO;

@Repository
public class SearchDAOImpl implements SearchDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.b_searchResult", vo);
	}

	@Override
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.n_searchResult", vo);
	}

	@Override
	public SearchVO readInfo(String bNo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.readInfo", bNo);
	}

	@Override
	public int listNSearchCount(SearchVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.listNSearchCount", vo);
	}

	@Override
	public int listBSearchCount(SearchVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.listBSearchCount", vo);
	}

	@Override
	public List<SearchVO> p_listAll(SearchVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.p_listAll", vo);
	}

	@Override
	public List<SearchVO> p_listOneAll(SearchVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.p_listOneAll", vo);
	}

	@Override
	public int listCount(PageInfo pageInfo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.listCount", pageInfo);
	}

	@Override
	public int resultCount(PageInfo pageInfo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.resultCount", pageInfo);
	}
	



}
