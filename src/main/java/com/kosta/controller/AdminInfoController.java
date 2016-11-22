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

import com.kosta.service.AdminInfoService;
import com.kosta.vo.MemberVO;
import com.kosta.vo.PageMaker;
import com.kosta.vo.SearchType;

@Controller
public class AdminInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminInfoController.class);
	
	@Autowired
	private AdminInfoService adminInfoService;
	
	@RequestMapping(value="adminLibrary/adminInfo/m_list", method=RequestMethod.GET)
	public String userListGET(Model model, SearchType search) throws Exception {
		
		logger.info("회원정보관리 페이지");
		
		model.addAttribute("userList", adminInfoService.userList(search));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(search);
		pageMaker.setTotalCount(adminInfoService.listCount(search));
		model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminInfo/m_list";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/a_list", method=RequestMethod.GET)
	public String adminListGET(Model model, SearchType search) throws Exception {
		
		logger.info("관리자정보관리 페이지");
		
		model.addAttribute("adminList", adminInfoService.adminList(search));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(search);
		pageMaker.setTotalCount(adminInfoService.adminCount(search));
		model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminInfo/a_list";
	}
	
	
	@RequestMapping(value="adminLibrary/adminInfo/addAdmin", method=RequestMethod.GET)
	public String addAdminGET(Model model) throws Exception {
		
		logger.info("관리자 계정 추가 페이지");
		
		return "adminLibrary/adminInfo/addAdmin";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/addAdmin", method=RequestMethod.POST)
	public String addAdminPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		logger.info("관리자 계정 추가 페이지");
		
		adminInfoService.addAdmin(vo);
		
		rttr.addFlashAttribute("success", "success");
		
		return "redirect:/adminLibrary/adminInfo/a_list";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/adminCheck", method=RequestMethod.GET)
	public String adminCheckGET(Model model) throws Exception {
		
		logger.info("관리자 비밀번호 확인 페이지");
		
		return "adminLibrary/adminInfo/adminCheck";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/adminCheck", method=RequestMethod.POST)
	public String adminCheckPOST(@RequestParam("password") String rawPassword, Model model) throws Exception {
		
		logger.info("관리자 비밀번호 확인 페이지");
		
		boolean result=adminInfoService.passwordCheck(rawPassword);
		if(result==false){
			//메세지 안넘어감, ajax로 변경 필요
			model.addAttribute("fail", "fail");
			return "adminLibrary/adminInfo/adminCheck";
		}
		
		return "redirect:/adminLibrary/adminInfo/passwordModify";
	}
	
	
	@RequestMapping(value="adminLibrary/adminInfo/passwordModify", method=RequestMethod.GET)
	public String passwordModifyGET() throws Exception {
		
		logger.info("관리자 비밀번호 변경 페이지");
		
		return "adminLibrary/adminInfo/passwordModify";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/passwordModify", method=RequestMethod.POST)
	public String passwordModifyPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		logger.info("관리자 비밀번호 변경 페이지");
		
		adminInfoService.passwordModify(vo);
		
		rttr.addFlashAttribute("success", "success");
		
		return "redirect:/adminLibrary";
	}
}
