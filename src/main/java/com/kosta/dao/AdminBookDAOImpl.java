package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.Rent_BookVO;
import com.kosta.vo.User_InfoVO;

@Repository
public class AdminBookDAOImpl implements AdminBookDAO {
	
	private String namespace = "com.kosta.mappers.AdminBookMapper.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public User_InfoVO userInfo(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"userInfo", vo);
	}

	@Override
	public List<Rent_BookVO> currentRent(Rent_BookVO vo) {
		return sqlSession.selectList(namespace+"currentRent",vo);
	}

	@Override
	@Transactional
	public void rentBook(Rent_BookVO vo) {
		sqlSession.insert(namespace+"insertRent", vo);
		sqlSession.update(namespace+"updateRent", vo);
	}

	@Override
	public int rentCnt(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"rentCnt", vo);
	}

	@Override
	public int selectMember(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"selectMember", vo);
	}

	@Override
	public int selectBook(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"selectBook", vo);
	}

	@Override
	public int selectBook2(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"selectBook2", vo);
	}

	@Override
	public void submitBook(Rent_BookVO vo) {
		sqlSession.insert(namespace+"insertRent", vo);
		sqlSession.update(namespace+"updateRent", vo);		
	}

	@Override
	public int checkLate(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"checkLate",vo);
	}

	@Override
	public String searchID(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"searchID",vo);
	}

}
