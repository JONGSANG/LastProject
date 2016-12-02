package com.kosta.dao;

import java.util.List;

import com.kosta.vo.LateVO;
import com.kosta.vo.MailVO;

public interface AdminUserDAO {

	public List<String> allMember() throws Exception;

	public List<String> allAdmin() throws Exception;
	
	//연체관리 전체 유저
	public List<LateVO> selectLateUserList(LateVO vo);
	//페이징
	public int countLateUserList(LateVO vo);
	//연체자 단체메일
	public List<String> lateUser() throws Exception;
	//연체관리 현재 유저
	public List<LateVO> selectLateCurUserList(LateVO vo);
	//페이징
	public int countLateCurUserList(LateVO vo);
	
	
}
