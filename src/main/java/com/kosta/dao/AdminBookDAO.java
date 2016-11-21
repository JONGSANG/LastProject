package com.kosta.dao;

import java.util.List;

import com.kosta.vo.Rent_BookVO;
import com.kosta.vo.User_InfoVO;

public interface AdminBookDAO {
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

}
