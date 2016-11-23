package com.kosta.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.MemberService;
import com.kosta.vo.MemberVO;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	//로그인 페이지에 접속시 세션이 있으면 다른곳으로 튕기는 기능 미구현
	@RequestMapping(value="userLibrary/member/login", method=RequestMethod.GET)
	public String loginGET(Model model, HttpSession session) {
		logger.info("로그인 페이지");
		return "userLibrary/member/login";
	}
	
	@RequestMapping(value="userLibrary/member/join", method=RequestMethod.GET)
	public String joinGET(MemberVO vo, Model model) {
		logger.info("회원가입 페이지");
		return "userLibrary/member/join";
	}
	
	@RequestMapping(value="userLibrary/member/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("회원가입 페이지");
		
		//회원등록(PWD암호화)
		memberService.memberJoin(vo);
		
		rttr.addFlashAttribute("join", "join");
		return "redirect:/";
	}
	
	
}
