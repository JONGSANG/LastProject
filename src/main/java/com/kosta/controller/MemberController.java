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
	
	@RequestMapping(value="userLibrary/member/login", method=RequestMethod.GET)
	public String loginGET(Model model) {
		logger.info("로그인 페이지");
		return "userLibrary/member/login";
	}
	
	@RequestMapping(value="userLibrary/member/logout", method=RequestMethod.GET)
	public String logoutGET(RedirectAttributes rttr) {
		logger.info("로그아웃(메인으로 이동)");
		
		//로그아웃시 main페이지에 로그아웃완료 JS처리를 위한
		rttr.addFlashAttribute("logout", "logout");
		return "redirect:/";
	}
	
	@RequestMapping(value="userLibrary/member/join", method=RequestMethod.GET)
	public String joinGET(Model model) {
		logger.info("회원가입 페이지");
		return "userLibrary/member/join";
	}
	
	@RequestMapping(value="userLibrary/member/findPassword", method=RequestMethod.GET)
	public String findPasswordGET(Model model) {
		logger.info("비밀번호 찾기 페이지");
		return "userLibrary/member/findPassword";
	}
	
	@RequestMapping(value="userLibrary/member/findID", method=RequestMethod.GET)
	public String findIDGET(Model model) {
		logger.info("아이디 찾기 페이지");
		return "userLibrary/member/findID";
	}
}
