package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminBookDAO;
import com.kosta.vo.BookVO;
import com.kosta.vo.Rent_BookVO;
import com.kosta.vo.User_InfoVO;

@Service
public class AdminBookServiceImpl implements AdminBookService {

	@Autowired
	public AdminBookDAO adminBookDAO;
	
	@Override
	public User_InfoVO userInfo(Rent_BookVO vo) {
		return adminBookDAO.userInfo(vo);
	}

	@Override
	public List<Rent_BookVO> currentRent(Rent_BookVO vo) {
		return adminBookDAO.currentRent(vo);
	}

	@Override
	public void rentBook(Rent_BookVO vo) {
		adminBookDAO.rentBook(vo);
	}

	@Override
	public int rentCnt(Rent_BookVO vo) {
		return adminBookDAO.rentCnt(vo);
	}

	@Override
	public int selectMember(Rent_BookVO vo) {
		return adminBookDAO.selectMember(vo);
	}

	@Override
	public int selectBook(Rent_BookVO vo) {
		return adminBookDAO.selectBook(vo);
	}

	@Override
	public int selectBook2(Rent_BookVO vo) {
		return adminBookDAO.selectBook2(vo);
	}

	@Override
	public void submitLateBook(Rent_BookVO vo) {
		adminBookDAO.submitLateBook(vo);
	}

	@Override
	public int checkLateUser(Rent_BookVO vo) {
		return adminBookDAO.checkLateUser(vo);
	}

	@Override
	public String searchID(Rent_BookVO vo) {
		return adminBookDAO.searchID(vo);
	}

	@Override
	public boolean checkLateBook(Rent_BookVO vo) {
		return adminBookDAO.checkLateBook(vo);
	}

	@Override
	public String selectMoney(Rent_BookVO vo) {
		return adminBookDAO.selectMoney(vo);
	}

	@Override
	public void submitBook(Rent_BookVO vo) {
		adminBookDAO.submitBook(vo);
	}

	@Override
	public List<BookVO> selectBookList(BookVO vo) {
		return adminBookDAO.selectBookList(vo);
	}

	@Override
	public int countBookList(BookVO vo) {
		return adminBookDAO.countBookList(vo);
	}

	@Override
	public List<BookVO> selectBookList2(BookVO vo) {
		return adminBookDAO.selectBookList2(vo);
	}

	@Override
	public int countBookList2(BookVO vo) {
		return adminBookDAO.countBookList2(vo);
	}

	@Override
	public List<BookVO> selectRegBookList(BookVO vo) {
		return adminBookDAO.selectRegBookList(vo);
	}

	@Override
	public int countRegBookList(BookVO vo) {
		return adminBookDAO.countRegBookList(vo);
	}

	@Override
	public void reg_ware(BookVO vo) {
		adminBookDAO.reg_ware(vo);
	}

	@Override
	public BookVO selectLastBookList(BookVO vo) {
		return adminBookDAO.selectLastBookList(vo);
	}

	@Override
	public void insertBook(BookVO vo) {
		adminBookDAO.insertBook(vo);
	}

	@Override
	public int selectReserve(Rent_BookVO vo) {
		return adminBookDAO.selectReserve(vo);
	}

	@Override
	public void updateReserve(Rent_BookVO vo) {
		adminBookDAO.updateReserve(vo);
	}

	@Override
	public void deleteDel(Rent_BookVO vo) {
		adminBookDAO.deleteDel(vo);
	}

	@Override
	public void deleteRes(Rent_BookVO vo) {
		adminBookDAO.deleteRes(vo);
	}

	@Override
	public int checkReserve(Rent_BookVO vo) {
		return adminBookDAO.checkReserve(vo);
	}

}
