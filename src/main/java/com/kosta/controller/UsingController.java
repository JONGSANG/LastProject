package com.kosta.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsingController {
	
	@RequestMapping(value="userLibrary/using/time", method=RequestMethod.GET)
	public String timeGET(Model model) {
		return "userLibrary/using/time";
	}
	
	@RequestMapping(value="userLibrary/using/s_room", method=RequestMethod.GET)
	public String s_roomGET(Model model) {
		return "userLibrary/using/s_room";
	}
	
	@RequestMapping(value="userLibrary/using/b_rent", method=RequestMethod.GET)
	public String b_rentGET(Model model) {
		return "userLibrary/using/b_rent";
	}
	
	@RequestMapping(value="userLibrary/using/m_info", method=RequestMethod.GET)
	public String m_infoGET(Model model) {
		return "userLibrary/using/m_info";
	}
	
	
	@RequestMapping(value="userLibrary/using/p_info", method=RequestMethod.GET)
	public String p_infoGET(Model model) {
		return "userLibrary/using/p_info";
	}
	@RequestMapping(value="userLibrary/using/b_room", method=RequestMethod.GET)
	public String recommandGET(Model model) {
		return "userLibrary/using/b_room";
	}
}
