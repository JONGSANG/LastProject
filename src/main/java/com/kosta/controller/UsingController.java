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
	
	@RequestMapping(value="userLibrary/libNews/f_board/list", method=RequestMethod.GET)
	public String f_boardlistGET(Model model) {
		return "userLibrary/libNews/f_board/list";
	}
	
	@RequestMapping(value="userLibrary/libNews/recommand", method=RequestMethod.GET)
	public String recommandGET(Model model) {
		return "userLibrary/libNews/recommand";
	}
}
