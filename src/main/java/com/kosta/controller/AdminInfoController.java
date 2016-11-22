package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminInfoService;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageMaker;
import com.kosta.vo.SearchType;

@Controller
public class AdminInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminInfoController.class);
	
	@Autowired
	private AdminInfoService adminInfoService;
	
	@RequestMapping(value="adminLibrary/adminInfo/m_list", method=RequestMethod.GET)
	public String userListGET(Model model, PageInfo page) throws Exception {
		
		logger.info("회원정보관리 페이지");
		
		model.addAttribute("userList", adminInfoService.userList(page));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(page);
		pageMaker.setTotalCount(adminInfoService.listCount());
		model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminInfo/m_list";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/m_search", method=RequestMethod.GET)
	public String userSearchGET(Model model, @ModelAttribute("pageInfo") SearchType search) throws Exception {
		
		logger.info("회원정보관리 페이지(검색결과)");
		
		model.addAttribute("userList", adminInfoService.searchUser(search));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(search);
		pageMaker.setTotalCount(adminInfoService.searchCount(search));
		model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminInfo/m_list";
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
	
	@RequestMapping(value="adminLibrary/adminInfo/a_list", method=RequestMethod.GET)
	public String adminListGET(MemberVO vo) throws Exception {
		
		logger.info("관리자정보관리 페이지");
		
		return "adminLibrary/adminInfo/a_list";
	}
}
