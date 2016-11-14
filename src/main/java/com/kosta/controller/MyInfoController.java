package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.MyInfoService;
import com.kosta.vo.MemberVO;

@Controller
public class MyInfoController {
	private static final Logger logger = LoggerFactory.getLogger(MyInfoController.class);
	
	@Autowired
	MyInfoService myInfoService;
	
	@RequestMapping(value="/userLibrary/myInfo/myInfo", method=RequestMethod.GET)
	public String myInfoGET(MemberVO vo, Model model) throws Exception{
		logger.info("내 정보 페이지");
		
		vo=myInfoService.myInfo(vo);
		System.out.println(vo.getBirth());
		System.out.println(vo.getEmail());
		model.addAttribute("MemberVO", vo);
		
		return "userLibrary/myInfo/myInfo";
	}
	
	@RequestMapping(value="userLibrary/myInfo/check", method=RequestMethod.GET)
	public String checkGET(Model model){
		logger.info("비밀번호 확인 페이지");
		return "userLibrary/myInfo/check";
	}
	
	@RequestMapping(value="userLibrary/myInfo/modify", method=RequestMethod.GET)
	public String modifyGET(Model model){
		logger.info("회원정보 수정 페이지");
		return "userLibrary/myInfo/modify";
	}
	
	@RequestMapping(value="userLibrary/myInfo/leave", method=RequestMethod.GET)
	public String leaveGET(Model model){
		logger.info("회원탈퇴 페이지");
		return "userLibrary/myInfo/leave";
	}
	
	@RequestMapping(value="userLibrary/myInfo/leave", method=RequestMethod.POST)
	public String leavePOST(MemberVO vo, RedirectAttributes rttr){
		logger.info("회원탈퇴(메인으로 이동)");
		//로그아웃시 main페이지에 탈퇴완료 JS처리를 위한
		rttr.addFlashAttribute("leave", "leave");
		return "redirect:/";
	}
}
