package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.PageInfo;

@Repository
public class AdminServiceDAOImpl implements AdminServiceDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AfterVO> afterList(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.afterList", page);
	}

	@Override
	public int afterCount() throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.afterCount");
	}

	@Override
	public List<CultureVO> cultureList(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.cultureList", page);
	}

	@Override
	public int cultureCount() throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.cultureCount");
	}

	@Override
	public AfterVO afterDetail(int num) throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.afterDetail", num);
	}

	@Override
	public List<L_AfterVO> afterID(int num) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.afterID", num);
	}

	@Override
	public CultureVO cultureDetail(int num) throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.cultureDetail", num);
	}

	@Override
	public List<L_CultureVO> cultureID(int num) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.cultureID", num);
	}
	
}
