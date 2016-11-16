package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminInfoController.class);
	
	@RequestMapping(value="adminLibrary/adminInfo/m_list", method=RequestMethod.GET)
	public String userList(Model model) throws Exception {
		
		logger.info("회원정보관리 페이지");
		
		
		return "adminLibrary/adminInfo/m_list";
	}
}
