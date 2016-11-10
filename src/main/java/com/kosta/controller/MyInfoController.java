package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosta.vo.MemberVO;

@Controller
public class MyInfoController {
	private static final Logger logger = LoggerFactory.getLogger(MyInfoController.class);
	
	@RequestMapping(value="userLibrary/myInfo/myInfo")
	public String myInfoGET(Model model){
		logger.info("내 정보 페이지");
		return "userLibrary/myInfo/myInfo";
	}
	
	@RequestMapping(value="userLibrary/myInfo/check")
	public String checkGET(Model model){
		logger.info("비밀번호 확인 페이지");
		return "userLibrary/myInfo/check";
	}
	
	@RequestMapping(value="userLibrary/myInfo/modify")
	public String modifyGET(Model model){
		logger.info("회원정보 수정 페이지");
		return "userLibrary/myInfo/modify";
	}
	
	@RequestMapping(value="userLibrary/myInfo/leave")
	public String leaveGET(Model model){
		logger.info("회원탈퇴 페이지");
		return "userLibrary/myInfo/leave";
	}
	
	@RequestMapping(value="userLibrary/myInfo/leave")
	public String leavePOST(MemberVO vo, Model model){
		logger.info("회원탈퇴 페이지");
		return "/";
	}
}
