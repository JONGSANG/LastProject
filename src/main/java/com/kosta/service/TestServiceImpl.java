package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.kosta.vo.MailVO;



@Service
public class TestServiceImpl implements TestService{
	
	@Autowired
	private JavaMailSender mailSender;

	@Override
	public void eMail(MailVO vo) throws Exception {
		
		List late=
		
		MimeMessage message = mailSender.createMimeMessage();	
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		
		
	}
	
}
