package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.service.StudyRoomService;
import com.kosta.vo.StudyRoomVO;

@Controller
public class UserStudyRoomController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserStudyRoomController.class);
	
	@Autowired
	StudyRoomService studyRoomService;
	
	@RequestMapping(value="userStudyRoom/aRoom/index", method=RequestMethod.GET)
	public String aRoomGET(StudyRoomVO vo, Model model) throws Exception{
		
		logger.info("A열람실 페이지");
		
		model.addAttribute("list", studyRoomService.aRoomList(vo));
		
		return "userStudyRoom/aRoom/index";
	}
	
	@RequestMapping(value="userStudyRoom/bRoom/index", method=RequestMethod.GET)
	public String bRoomGET(StudyRoomVO vo, Model model) throws Exception{
		
		logger.info("B열람실 페이지");
		
		model.addAttribute("list", studyRoomService.bRoomList(vo));
		
		return "userStudyRoom/bRoom/index";
	}
	
	@RequestMapping(value="userStudyRoom/cRoom/index", method=RequestMethod.GET)
	public String cRoomGET(StudyRoomVO vo, Model model) throws Exception{
		
		logger.info("C열람실 페이지");
		
		model.addAttribute("list", studyRoomService.cRoomList(vo));
		
		return "userStudyRoom/cRoom/index";
	}
	
	
}
