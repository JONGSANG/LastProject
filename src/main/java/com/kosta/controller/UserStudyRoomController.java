package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserStudyRoomController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserStudyRoomController.class);
	
	@RequestMapping(value="userStudyRoom/aRoom/index", method=RequestMethod.GET)
	public String aRoomGET(){
		
		logger.info("A열람실 페이지");
		
		return "userStudyRoom/aRoom/index";
	}
}
