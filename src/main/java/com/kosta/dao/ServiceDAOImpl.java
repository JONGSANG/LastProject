package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;

@Repository
public class ServiceDAOImpl implements ServiceDAO {
	@Autowired
	private SqlSession sqlSession;
	
	//--------------------------------------- 방과후 --------------------------------------- 
	@Override
	public void after_write(AfterVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.after_write", vo);
		
	}

	@Override
	public List<AfterVO> after_list() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.after_list");
	}

	@Override
	public AfterVO after_read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_read", num);
	}
	
	@Override
	public void after_viewcnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.after_viewcnt", num);
		
	}

	@Override
	public void after_delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.after_delete", num);
		
	}

	@Override
	public void after_modify(AfterVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.after_modify", vo);
		
	}

	@Override
	public AfterVO after_joiner(AfterVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_joiner", vo);
	}
	
	
	@Override
	@Transactional
	public void after_join(L_AfterVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.after_join", vo);
		sqlSession.update("com.kosta.mappers.ServiceMapper.after_joinup", vo);
	}
	
	//--------------------------------------- 문화행사 ---------------------------------------
	@Override
	public void culture_write(CultureVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.culture_write", vo);
		
	}

	@Override
	public List<CultureVO> culture_list() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.culture_list");
	}

	@Override
	public CultureVO culture_read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_read", num);
	}
	
	@Override
	public void culture_viewcnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.culture_viewcnt", num);
		
	}

	@Override
	public void culture_delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.culture_delete", num);
		
	}

	@Override
	public void culture_modify(CultureVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.culture_modify", vo);
		
	}

	@Override
	public CultureVO culture_joiner(CultureVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_joiner", vo);
	}
	
	
	@Override
	@Transactional
	public void culture_join(L_CultureVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.culture_join", vo);
		sqlSession.update("com.kosta.mappers.ServiceMapper.culture_joinup", vo);
	}
}
