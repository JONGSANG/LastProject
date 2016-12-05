package com.kosta.dao;

import java.util.List;

import com.kosta.vo.LateInfoVO;
import com.kosta.vo.LateVO;

public interface AdminUserDAO {

	public List<String> allMember() throws Exception;

	public List<String> allAdmin() throws Exception;

	// 연체관리 전체 유저
	public List<LateVO> selectLateUserList(LateVO vo);

	// 페이징
	public int countLateUserList(LateVO vo);

	// 연체자 단체메일
	public List<String> lateUser() throws Exception;

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

	public List<String> lateBook(String id) throws Exception;

	public List<String> lateUser1() throws Exception; 
}
