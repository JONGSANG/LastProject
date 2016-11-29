package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminUserService;
import com.kosta.vo.MailVO;

@Controller
public class AdminUserController {

		private static final Logger logger = LoggerFactory.getLogger(AdminUserController.class);
		
		@Autowired
		AdminUserService adminUserService;
		
		@RequestMapping(value="adminLibrary/adminUser/memberMail", method=RequestMethod.GET)
		public String memberMailGET() throws Exception {
			
			logger.info("단체메일발송(사용자) 페이지");
			
			return "adminLibrary/adminUser/memberMail";
		}
		
		@RequestMapping(value="adminLibrary/adminUser/memberMail", method=RequestMethod.POST)
		public String memberMailPOST(MailVO vo, RedirectAttributes rttr) throws Exception {
			
			logger.info("단체메일발송(사용자) 처리 페이지");
			
			adminUserService.memberMail(vo);
			
			return "redirect:/adminLibrary";
		}
		
		@RequestMapping(value="adminLibrary/adminUser/adminMail", method=RequestMethod.GET)
		public String adminMailMailGET() throws Exception {
			
			logger.info("단체메일발송(사용자) 페이지");
			
			return "adminLibrary/adminUser/adminMail";
		}
		
		@RequestMapping(value="adminLibrary/adminUser/adminMail", method=RequestMethod.POST)
		public String adminMailMailPOST(MailVO vo, RedirectAttributes rttr) throws Exception {
			
			logger.info("단체메일발송(사용자) 처리 페이지");
			
			adminUserService.adminMail(vo);
			
			return "redirect:/adminLibrary";
		}
}
