package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminUserService;
import com.kosta.vo.LateVO;
import com.kosta.vo.MailVO;
import com.kosta.vo.PageMaker_rep;

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
		
		// 연체 관리
		@RequestMapping(value="adminLibrary/adminUser/lateUser/index", method=RequestMethod.GET)
		public String lateTotalGet(Model model, LateVO vo){
			logger.info("연체 관리 페이지");
			PageMaker_rep pageMaker = new PageMaker_rep();
			pageMaker.setPageInfo(vo);
			
			pageMaker.setTotalCount(adminUserService.countLateCurUserList(vo));
			model.addAttribute("pageMaker", pageMaker);
			model.addAttribute("lateUserInfo", adminUserService.lateUserInfo());

			model.addAttribute("lateUser", adminUserService.selectLateCurUserList(vo));
			return "adminLibrary/adminUser/lateUser/index";
		}
		
		@RequestMapping(value="adminLibrary/adminUser/lateUser/lateTotalUser", method=RequestMethod.GET)
		public String lateCurGet(Model model, LateVO vo){
			logger.info("연체 관리 페이지");
			PageMaker_rep pageMaker = new PageMaker_rep();
			pageMaker.setPageInfo(vo);
			
			pageMaker.setTotalCount(adminUserService.countLateUserList(vo));
			model.addAttribute("pageMaker", pageMaker);
			model.addAttribute("lateInfo", adminUserService.lateInfo());
			model.addAttribute("lateUserInfo", adminUserService.lateUserInfo());
			model.addAttribute("lateUser", adminUserService.selectLateUserList(vo));
			model.addAttribute("cntLateBook", adminUserService.countLateUserList(vo));
			model.addAttribute("cntLateUser", adminUserService.cntLateUser());
			
			return "adminLibrary/adminUser/lateUser/lateTotalUser";
		}

		// 연체자에게 단체메일 발송 페이지 불러오기
		@RequestMapping(value="adminLibrary/adminUser/lateUser/lateUserMail", method=RequestMethod.GET)
		public String lateUserMailGET(MailVO vo, RedirectAttributes rttr) throws Exception {
			logger.info("단체메일발송(연체자) 처리 페이지");

			return "adminLibrary/adminUser/lateUser/lateUserMail";
		}
			

		// 연체자에게 단체메일 발송
		@RequestMapping(value="adminLibrary/adminUser/lateUser/lateUserMail", method=RequestMethod.POST)
		public String lateUserMailPOST(MailVO vo, RedirectAttributes rttr) throws Exception {
			
			logger.info("단체메일발송(연체자) 처리 페이지");
			
			adminUserService.lateUserMail(vo);
			
			return "redirect:/adminLibrary";
		}

}
