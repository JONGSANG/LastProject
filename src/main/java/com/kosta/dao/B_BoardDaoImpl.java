package com.kosta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kosta.vo.BestVo;
import com.kosta.vo.ReadVo;

@Repository
public class B_BoardDaoImpl implements B_BoardDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public ReadVo read(String BNO) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.BestMapper.read", BNO);
	}

	@Override
	public List<BestVo> best() throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.BestMapper.best");
	}
	
	@Override
	public List<BestVo> genre1() throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.BestMapper.genre1");
	}
	
	@Override
	public List<BestVo> genre2() throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.BestMapper.genre2");
	}
	
	@Override
	public List<BestVo> genre3() throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.BestMapper.genre3");
	}
	
	@Override
	public List<BestVo> genre4() throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.BestMapper.genre4");
	}
	
	
}
