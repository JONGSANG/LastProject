package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.HopeVO;
import com.kosta.vo.Hope_repVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SearchVO;

@Repository
public class SearchDAOImpl implements SearchDAO{

	@Autowired
	private SqlSession sqlSession;

	// 도서 결과를 가져오기 위한 sql문을 실행시켜준다.
	@Override
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.b_searchResult", vo);
	}
	// 신착 도서 결과를 가져오기 위한 sql문을 실행시켜준다.
	@Override
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.n_searchResult", vo);
	}
	// 도서 상세 정보보기를 위한 sql문을 실행시켜 db정보를 가져온다.
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

	// 연속 간행물의 모든 list를 띄우기 위한 sql문으로 db정보를 가져옴
	@Override
	public List<SearchVO> p_listAll(SearchVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.p_listAll", vo);
	}

	// 연속 간행물의 목록중 세부목록을 띄우기 위한 sql문으로 db정보를 가져옴
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
	
//////////////////////////////////////////////////////////
	

	@Override
	public void create(HopeVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.SearchMapper.f_create", vo);	// F_BoardMapper의 create로 보냄
	}

	@Override
	public HopeVO read(HopeVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.f_read", vo);
	}

	@Override
	public Hope_repVO read2(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.f_read2", num);
	}

	@Override
	public void update(HopeVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.SearchMapper.f_update", vo);
	}

	@Override
	public void delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.SearchMapper.f_delete", num);
	}

	@Override
	public void delete_re(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.SearchMapper.f_delete_re", num);
	}

	@Override
	public List<HopeVO> listAll(HopeVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.f_listAll",vo);
	}

	// 댓글달기
	@Override
	public void insertComment(Hope_repVO vo2) throws Exception {
		sqlSession.insert("com.kosta.mappers.SearchMapper.f_insertComment", vo2);
		
	}

	@Override
	public List<Hope_repVO> commentList(Hope_repVO vo) throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.SearchMapper.f_commentList", vo);
	}

	@Override
	public void update_re(Hope_repVO vo2) throws Exception {
		sqlSession.update("com.kosta.mappers.SearchMapper.f_update_re", vo2);
	}

	// 조회수 업데이트
	@Override
	public void updateViewCnt(HopeVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.SearchMapper.f_updateViewCnt", vo);
		
	}

	@Override
	public int f_listAllCount(HopeVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.f_listAllCount", vo);
	}

	@Override
	public int f_repAllCount(Hope_repVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.f_repAllCount", vo);
	}
	@Override
	public int checkUser(String id) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.SearchMapper.checkUser", id);
	}


}
