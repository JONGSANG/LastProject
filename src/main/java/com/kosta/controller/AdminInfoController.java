package com.kosta.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminInfoController {
	
	@RequestParam(value="sadf", method=RequestMethod.GET)
	public String userList(Model model) throws Exception {
		return "";
	}
}
