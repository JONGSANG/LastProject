package com.kosta.dao;

import java.util.List;

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

	//반납
	
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
}
