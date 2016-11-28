package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosta.service.AdminServiceService;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageMaker;

@Controller
public class AdminServiceController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminServiceController.class);
	
	@Autowired
	AdminServiceService adminServiceService;
	
	@RequestMapping(value="adminLibrary/adminService/a_list", method=RequestMethod.GET)
	public String afterListGET(PageInfo page, Model model) throws Exception {
		
		logger.info("방과후학교 페이지");
		
		model.addAttribute("after", adminServiceService.afterList(page));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageInfo(page);
	    pageMaker.setTotalCount(adminServiceService.afterCount());
	    
	    model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminService/a_list";
	}
	
	@RequestMapping(value="adminLibrary/adminService/a_detail", method=RequestMethod.GET)
	public String afterDetailGET(@RequestParam("num") int num, Model model) throws Exception {
		
		logger.info("방과후학교(상세보기) 페이지");
		
		model.addAttribute("detail", adminServiceService.afterDetail(num));
		model.addAttribute("list", adminServiceService.afterID(num));
		
		return "adminLibrary/adminService/a_detail";
	}
	
	@RequestMapping(value="adminLibrary/adminService/c_list", method=RequestMethod.GET)
	public String cultureListGET(PageInfo page, Model model) throws Exception {
		
		logger.info("문화행사 페이지");
		
		model.addAttribute("culture", adminServiceService.cultureList(page));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageInfo(page);
	    pageMaker.setTotalCount(adminServiceService.cultureCount());
	    
	    model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminService/c_list";
	}
	
	@RequestMapping(value="adminLibrary/adminService/c_detail", method=RequestMethod.GET)
	public String cultureDetailGET(@RequestParam("num") int num, Model model) throws Exception {
		
		logger.info("문화행사(상세보기) 페이지");
		
		model.addAttribute("detail", adminServiceService.cultureDetail(num));
		model.addAttribute("list", adminServiceService.cultureID(num));
		
		return "adminLibrary/adminService/c_detail";
	}
}
