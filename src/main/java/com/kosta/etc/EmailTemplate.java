package com.kosta.etc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

public class EmailTemplate {
	
	@Autowired
	private JavaMailSender mailSender;
	
	public void findID(String email){
		
		try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
