package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String userMain(Model model) {
		logger.info("도서관 메인 페이지");
		
		return "userLibrary";
	}
	
	@RequestMapping(value = "/adminLibrary", method = RequestMethod.GET)
	public String adminMain(Model model) {
		logger.info("관리자 메인 페이지");
		return "adminLibrary";
	}
}
