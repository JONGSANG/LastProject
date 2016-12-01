package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminStudyRoomController {

	private static final Logger logger = LoggerFactory.getLogger(AdminStudyRoomController.class);
	
	@RequestMapping(value="adminLibrary/adminStudyRoom/currentState", method=RequestMethod.GET)
	public String currentStateGET(Model model) {
		
		logger.info("열람실현황");
		
		return "adminLibrary/adminStudyRoom/currentState";
	}

	@RequestMapping(value="adminLibrary/adminStudyRoom/aRoom/index", method=RequestMethod.GET)
	public String aRoomGET(Model model) {
		
		logger.info("A열람실");
		
		return "adminLibrary/adminStudyRoom/aRoom/index";
	}
	
	@RequestMapping(value="adminLibrary/adminStudyRoom/bRoom/index", method=RequestMethod.GET)
	public String bRoomGET(Model model) {
		
		logger.info("B열람실");
		
		return "adminLibrary/adminStudyRoom/bRoom/index";
	}

	@RequestMapping(value="adminLibrary/adminStudyRoom/cRoom/index", method=RequestMethod.GET)
	public String cRoomGET(Model model) {
		
		logger.info("C열람실");
		
		return "adminLibrary/adminStudyRoom/cRoom/index";
	}

}
