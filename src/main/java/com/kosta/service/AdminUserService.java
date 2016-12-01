package com.kosta.service;

import java.util.List;

import com.kosta.vo.LateVO;
import com.kosta.vo.MailVO;

public interface AdminUserService {

	public void memberMail(MailVO vo) throws Exception;

	public void adminMail(MailVO vo) throws Exception;

	//연체관리
	public List<LateVO> selectLateUserList();
	//연체자 단체메일
	public void lateUserMail(MailVO vo) throws Exception;

}
