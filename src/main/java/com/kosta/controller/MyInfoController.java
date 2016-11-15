package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.MyInfoService;
import com.kosta.vo.MemberVO;

@Controller
public class MyInfoController {
	private static final Logger logger = LoggerFactory.getLogger(MyInfoController.class);
	
	@Autowired
	MyInfoService myInfoService;
	
	@RequestMapping(value="/userLibrary/myInfo/myInfo", method=RequestMethod.GET)
	public String myInfoGET(Model model) throws Exception{
		logger.info("내 정보 페이지");
		
		model.addAttribute("MemberVO", myInfoService.myInfo());
		
		return "userLibrary/myInfo/myInfo";
	}
	
	@RequestMapping(value="userLibrary/myInfo/modifyCheck", method=RequestMethod.GET)
	public String modifyCheckGET(Model model){
		logger.info("비밀번호수정 확인 페이지");
		return "userLibrary/myInfo/modifyCheck";
	}
	
	@RequestMapping(value="userLibrary/myInfo/modifyCheck", method=RequestMethod.POST)
	public String modifyCheckPOST(@RequestParam("password") String rawPassword, RedirectAttributes rttr) throws Exception{
		logger.info("비밀번호수정 확인 페이지");
		
		boolean result=myInfoService.passwordCheck(rawPassword);
		if(result==false){
			//메세지 안넘어감, ajax로 변경 필요
			rttr.addAttribute("false", "false");
			return "redirect:/userLibrary/myInfo/modifyCheck";
		}
		return "redirect:/userLibrary/myInfo/modify";
	}
	
	@RequestMapping(value="userLibrary/myInfo/modify", method=RequestMethod.GET)
	public String modifyGET(Model model) throws Exception{
		logger.info("회원정보 수정 페이지");
		
		model.addAttribute("MemberVO", myInfoService.modify());
		
		return "userLibrary/myInfo/modify";
	}
	
	@RequestMapping(value="userLibrary/myInfo/modify", method=RequestMethod.POST)
	public String modifyPOST(MemberVO vo, RedirectAttributes rttr) throws Exception{
		logger.info("회원정보 수정 페이지");
		
		myInfoService.update(vo);
		rttr.addAttribute("modify", "modify");
		
		return "redirect:/userLibrary/myInfo/myInfo";
	}
	
	@RequestMapping(value="userLibrary/myInfo/leave", method=RequestMethod.GET)
	public String leaveGET(Model model){
		logger.info("회원탈퇴 페이지");
		return "userLibrary/myInfo/leave";
	}
	
	@RequestMapping(value="userLibrary/myInfo/leave", method=RequestMethod.POST)
	public String leavePOST(String rawPassword, RedirectAttributes rttr) throws Exception{
		logger.info("회원탈퇴 페이지");
		
		boolean result=myInfoService.passwordCheck(rawPassword);
		
		if(result==false){
			//메세지 안넘어감, ajax로 변경 필요
			rttr.addAttribute("false", "false");
			return "redirect:/userLibrary/myInfo/leave";
		}
		
		rttr.addAttribute("leave", "leave");
		
		return "redirect:/";
	}
}
