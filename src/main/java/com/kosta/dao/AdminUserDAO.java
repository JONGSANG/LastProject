package com.kosta.dao;

import java.util.List;

import com.kosta.vo.LateVO;
import com.kosta.vo.MailVO;

public interface AdminUserDAO {

	public List<String> allMember() throws Exception;

	public List<String> allAdmin() throws Exception;
	
	//연체관리
	public List<LateVO> selectLateUserList();
	//연체자 단체메일
	public List<String> lateUser() throws Exception;

}
