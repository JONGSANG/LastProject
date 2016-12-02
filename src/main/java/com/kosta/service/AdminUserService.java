package com.kosta.service;

import java.util.List;

import com.kosta.vo.LateInfoVO;
import com.kosta.vo.LateVO;
import com.kosta.vo.MailVO;

public interface AdminUserService {

	public void memberMail(MailVO vo) throws Exception;

	public void adminMail(MailVO vo) throws Exception;

	// 연체관리
	public List<LateVO> selectLateUserList(LateVO vo);

	// 페이징, 총 연체 갯수 (책기준)
	public int countLateUserList(LateVO vo);

	// 연체자 단체메일
	public void lateUserMail(MailVO vo) throws Exception;

	// 연체관리 현재 유저
	public List<LateVO> selectLateCurUserList(LateVO vo);

	// 페이징
	public int countLateCurUserList(LateVO vo);

	// 연체 통계 메소드
	public LateInfoVO lateInfo();

	// 연체 유저 통계 메소드
	public LateInfoVO lateUserInfo();
	
	// 연체 유저 몇명인지 
	public String cntLateUser(); 


}
