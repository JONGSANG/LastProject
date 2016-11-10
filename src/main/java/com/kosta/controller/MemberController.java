package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value="UserLibrary/member/login", method=RequestMethod.GET)
	public String loginGET(Model model) {
		logger.info("로그인 페이지");
		return "UserLibrary/member/login";
	}
	
	@RequestMapping(value="UserLibrary/member/logout", method=RequestMethod.GET)
	public String logoutGET(RedirectAttributes rttr) {
		logger.info("로그아웃(메인으로 이동)");
		
		//로그아웃시 main페이지에 logout완료 JS처리를 위한 리다이렉트 객체
		rttr.addFlashAttribute("logout", "logout");
		return "redirect:/";
	}
	
	@RequestMapping(value="UserLibrary/member/join", method=RequestMethod.GET)
	public String joinGET(Model model) {
		logger.info("회원가입 페이지");
		return "UserLibrary/member/join";
	}
	
	@RequestMapping(value="UserLibrary/member/findPassword", method=RequestMethod.GET)
	public String findPasswordGET(Model model) {
		logger.info("비밀번호 찾기 페이지");
		return "UserLibrary/member/findPassword";
	}
	
	@RequestMapping(value="UserLibrary/member/findID", method=RequestMethod.GET)
	public String findIDGET(Model model) {
		logger.info("아이디 찾기 페이지");
		return "UserLibrary/member/findID";
	}
}
