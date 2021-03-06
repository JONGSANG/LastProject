package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.BookVO;
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
	@Transactional
	public void submitLateBook(Rent_BookVO vo) {
		//연체테이블 업뎃
		sqlSession.update(namespace+"submitLate", vo);
		//대출테이블 업뎃
		sqlSession.update(namespace+"submitRent", vo);
		//문헌정보실 책 찾아서 업뎃
		sqlSession.update(namespace+"submitRoom_b", vo);
	}
	
	@Override
	@Transactional
	public void submitBook(Rent_BookVO vo) {
		//대출테이블 업뎃
		sqlSession.update(namespace+"submitRent", vo);
		//문헌정보실 책 찾아서 업뎃
		sqlSession.update(namespace+"submitRoom_b", vo);
	}

	@Override
	public int checkLateUser(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"checkLateUser",vo);
	}

	@Override
	public String searchID(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"searchID",vo);
	}

	@Override
	public boolean checkLateBook(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"checkLateBook", vo);
	}

	@Override
	public String selectMoney(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"selectMoney", vo);
	}

	@Override
	public List<BookVO> selectBookList(BookVO vo) {
		return sqlSession.selectList(namespace+"selectBookList",vo);
	}

	@Override
	public int countBookList(BookVO vo) {
		return sqlSession.selectOne(namespace+"countBookList", vo);
	}

	@Override
	public List<BookVO> selectBookList2(BookVO vo) {
		return sqlSession.selectList(namespace+"selectBookList2", vo);
	}

	@Override
	public int countBookList2(BookVO vo) {
		return sqlSession.selectOne(namespace+"countBookList2", vo);
	}

	@Override
	public List<BookVO> selectRegBookList(BookVO vo) {
		return sqlSession.selectList(namespace+"selectRegBookList", vo);
	}

	@Override
	public int countRegBookList(BookVO vo) {
		return sqlSession.selectOne(namespace+"countRegBookList", vo);
	}

	@Override
	@Transactional
	public void reg_ware(BookVO vo) {
		sqlSession.update(namespace+"reg_wareUpdate", vo);
		sqlSession.insert(namespace+"reg_wareInsert", vo);
	}

	@Override
	public BookVO selectLastBookList(BookVO vo) {
		return sqlSession.selectOne(namespace+"selectLastBookList", vo);
	}

	@Override
	public void insertBook(BookVO vo) {
		sqlSession.insert(namespace+"insertBook", vo);
		sqlSession.insert(namespace+"insertRoom_b", vo);
	}

	@Override
	public int selectReserve(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"selectReserve",vo);
	}

	@Override
	public void updateReserve(Rent_BookVO vo) {
		sqlSession.update(namespace+"updateReserve", vo);
	}

	@Override
	public void deleteDel(Rent_BookVO vo) {
		sqlSession.delete(namespace+"deleteDel", vo);
	}

	@Override
	public void deleteRes(Rent_BookVO vo) {
		sqlSession.delete(namespace+"deleteRes", vo);
	}

	@Override
	public int checkReserve(Rent_BookVO vo) {
		return sqlSession.selectOne(namespace+"checkReserve",vo);
	}

}
