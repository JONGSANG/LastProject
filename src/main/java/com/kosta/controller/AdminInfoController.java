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
	
	@RequestMapping(value="adminLibrary/adminInfo/userDetail", method=RequestMethod.GET)
	public String userDetailGET(@RequestParam("id") String id, Model model) throws Exception {
		
		logger.info("상세보기 페이지(회원)");
		//회원정보 출력
		model.addAttribute("user", adminInfoService.detailUser(id));
		//대여정보 출력
		model.addAttribute("rent", adminInfoService.detailRent(id));
		
		return "adminLibrary/adminInfo/userDetail";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/roleChange", method=RequestMethod.POST)
	public String roleChangePOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		logger.info("회원등급 변경 페이지");
		
		adminInfoService.roleChange(vo);
		
		rttr.addFlashAttribute("change", "change");
		
		return "redirect:/adminLibrary/adminInfo/m_list";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/userDelete", method=RequestMethod.POST)
	public String userDeletePOST(@RequestParam("id") String id, RedirectAttributes rttr) throws Exception {
		
		logger.info("회원계정 삭제 페이지");
		
		adminInfoService.userDelete(id);
		
		rttr.addFlashAttribute("leave", "leave");
		
		return "redirect:/adminLibrary/adminInfo/m_list";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/adminDetail", method=RequestMethod.GET)
	public String adminDetailGET(@RequestParam("id") String id, Model model) throws Exception {
		
		logger.info("상세보기 페이지(관리자)");
		
		model.addAttribute("admin", adminInfoService.detailAdmin(id));
		
		return "adminLibrary/adminInfo/adminDetail";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/adminPart", method=RequestMethod.POST)
	public String adminPartPOST(MemberVO vo, Model model) throws Exception {
		
		logger.info("상세보기 페이지(관리자)");
		
		adminInfoService.adminPart(vo);
		
		return "redirect:/adminLibrary/adminInfo/a_list";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/adminLevel", method=RequestMethod.POST)
	public String adminLevelPOST(MemberVO vo, Model model) throws Exception {
		
		logger.info("상세보기 페이지(관리자)");
		
		adminInfoService.adminLevel(vo);
		
		return "redirect:/adminLibrary/adminInfo/a_list";
	}
	
	@RequestMapping(value="adminLibrary/adminInfo/adminDelete", method=RequestMethod.POST)
	public String adminDeletePOST(String id, Model model) throws Exception {
		
		logger.info("상세보기 페이지(관리자)");
		
		adminInfoService.adminDelete(id);
		
		return "redirect:/adminLibrary/adminInfo/a_list";
	}
}
