package com.kosta.service;

import com.kosta.vo.MailVO;

public interface AdminUserService {

	public void memberMail(MailVO vo) throws Exception;

	public void adminMail(MailVO vo) throws Exception;

}