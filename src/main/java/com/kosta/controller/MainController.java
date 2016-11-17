package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.service.MainService;
import com.kosta.vo.MemberVO;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	MainService mainService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String userMain(Model model) throws Exception {
		logger.info("도서관 메인 페이지");
		
		model.addAttribute("vo", mainService.getName());
		
		return "userLibrary";
	}
	
	@RequestMapping(value = "/adminLibrary", method = RequestMethod.GET)
	public String adminMain(Model model) {
		logger.info("관리자 메인 페이지");
		return "adminLibrary";
	}
}
