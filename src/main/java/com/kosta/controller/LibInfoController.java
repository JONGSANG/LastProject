package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LibInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(LibInfoController.class);
	
	@RequestMapping(value="userLibrary/libInfo/org", method=RequestMethod.GET)
	public String orgGET(Model model) {
		logger.info("조직도");
		return "userLibrary/libInfo/org";
	}
	
	@RequestMapping(value="userLibrary/libInfo/map", method=RequestMethod.GET)
	public String mapGET(Model model) {
		logger.info("찾아오는 길");
		return "userLibrary/libInfo/map";
	}
	
	@RequestMapping(value="userLibrary/libInfo/s_status", method=RequestMethod.GET)
	public String s_statusGET(Model model) {
		logger.info("시설 현황");
		return "userLibrary/libInfo/s_status";
	}
	
	@RequestMapping(value="userLibrary/libInfo/intro", method=RequestMethod.GET)
	public String introGET(Model model) {
		logger.info("인사말");
		return "userLibrary/libInfo/intro";
	}
	
	@RequestMapping(value="userLibrary/libInfo/b_status", method=RequestMethod.GET)
	public String b_statusGET(Model model) {
		logger.info("자료현황");
		//
		return "userLibrary/libInfo/b_status";
	}
}
