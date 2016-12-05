package com.kosta.dao;

import java.util.List;

import com.kosta.vo.BookVO;
import com.kosta.vo.Rent_BookVO;
import com.kosta.vo.User_InfoVO;

public interface AdminBookDAO {

	//대출
	
	// 회원이 등록되어있는지 확인하는 서비스
	public int selectMember(Rent_BookVO vo);
	
	// 책번호가 맞는 것인지 확인하는 서비스
	public int selectBook(Rent_BookVO vo);

	// 유저 정보 읽어오는 서비스
	public User_InfoVO userInfo(Rent_BookVO vo);

	// 유저 대출 내역 읽어오는 서비스
	public List<Rent_BookVO> currentRent(Rent_BookVO vo);

	// 대출 실행
	public void rentBook(Rent_BookVO vo);

	// 유저 대출 내역 중 현재 대출 권수 일기
	public int rentCnt(Rent_BookVO vo);
	
	// 연체자인지 판별
	public int checkLateUser(Rent_BookVO vo);
	
	// 다른사람이 예약중인 도서인지 판별
	public int selectReserve(Rent_BookVO vo);
	
	//반납
	//도서배달이 되어있으면 지워버림.
	public void deleteDel(Rent_BookVO vo);
	//대출 예약이 되어 있으면 그책의 예약 기간을 넣어줌
	public void updateReserve(Rent_BookVO vo);
	
	// 책번호가 맞는 것인지 확인하는 서비스
	public int selectBook2(Rent_BookVO vo);
	
	// 연체책 반납 실행
	public void submitLateBook(Rent_BookVO vo);

	// 그냥 반납 실행
	public void submitBook(Rent_BookVO vo);

	// 반납받은 책으로 아이디 검색
	public String searchID(Rent_BookVO vo);

	// 연체자인지 판별
	public boolean checkLateBook(Rent_BookVO vo);

	// 책에 대한 연체금액 뽑아오기.
	public String selectMoney(Rent_BookVO vo);
	
	// 신규 도서 등록
	// 마지막 BNO의 정보 불러오기
	public BookVO selectLastBookList(BookVO vo);
	// 도서 등록
	public void insertBook(BookVO vo);
	
	
	
	// 폐기 도서 등록
	// 비치도서 리스트 불러오기
	public List<BookVO> selectRegBookList(BookVO vo);
	// 책리스트 페이징
	public int countRegBookList(BookVO vo);
	// 폐기 등록 
	public void reg_ware(BookVO vo);
		
	
	// 비치도서목록 불러오기
	public List<BookVO> selectBookList(BookVO vo);
	
	// 책리스트 페이징
	public int countBookList(BookVO vo);
	
	// 폐기 도서목록 불러오기
	public List<BookVO> selectBookList2(BookVO vo);
	
	// 책리스트 페이징
	public int countBookList2(BookVO vo);
	

}
