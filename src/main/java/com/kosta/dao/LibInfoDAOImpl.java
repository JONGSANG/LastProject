package com.kosta.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.B_statusVO;

@Repository
public class LibInfoDAOImpl implements LibInfoDAO {

	private String namespace = "com.kosta.mappers.LibInfoMapper.";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public B_statusVO b_status() {
		return sqlSession.selectOne(namespace+"b_status");
	}

}
