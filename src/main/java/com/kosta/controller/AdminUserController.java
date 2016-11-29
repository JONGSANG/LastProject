package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.service.AdminUserService;
import com.kosta.vo.MailVO;

@Controller
public class AdminUserController {

		private static final Logger logger = LoggerFactory.getLogger(AdminUserController.class);
		
		@Autowired
		AdminUserService adminUserService;
		
		@RequestMapping(value="adminLibrary/adminUser/memberMail", method=RequestMethod.GET)
		public String memberMail(MailVO vo) throws Exception {
			
			logger.info("단체메일발송 페이지");
			
			adminUserService.memberMail(vo);
			
			return "adminLibrary/adminUser/memberMail";
		}
}
