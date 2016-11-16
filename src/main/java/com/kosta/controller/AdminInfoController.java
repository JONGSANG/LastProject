package com.kosta.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminInfoController {
	
	@RequestMapping(value="/adminLibrary/", method=RequestMethod.GET)
	public String userList(Model model) throws Exception {
		
		return "";
	}
}
