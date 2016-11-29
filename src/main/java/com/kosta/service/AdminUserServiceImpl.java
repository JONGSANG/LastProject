package com.kosta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminUserDAO;
import com.kosta.vo.MailVO;

@Service
public class AdminUserServiceImpl implements AdminUserService {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private AdminUserDAO adminUserdao;
	
	@Override
	public void memberMail(MailVO vo) throws Exception {
		vo.setTo(adminUserdao.allMember());
	}
	
}
