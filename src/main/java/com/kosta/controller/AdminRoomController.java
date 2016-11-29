package com.kosta.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.vo.BookVO;

@Controller
public class AdminRoomController {

	private static final Logger logger = LoggerFactory.getLogger(AdminRoomController.class);
	
	@RequestMapping(value = "adminLibrary/adminStudyRoom/aRoom/index", method = RequestMethod.GET)
	public String aRoomIndexGet(Model model) {
		logger.info("RentBook page");
		
		List<BookVO> list = new ArrayList<BookVO>();
		BookVO vo = new BookVO();
		
		vo.setbNo("dd");
		list.add(vo);
		BookVO vo2 = new BookVO();

		vo2.setbNo("제발제발");
		list.add(vo2);
		System.out.println(list.get(0).getbNo());
		System.out.println(list.get(1).getbNo());
		model.addAttribute("list",list);
		model.addAttribute("state",0);
		return "adminLibrary/adminStudyRoom/aRoom/index";
	}
	
	@RequestMapping(value = "adminLibrary/adminStudyRoom/bRoom/index", method = RequestMethod.GET)
	public String bRoomIndexGet(Model model) {
		logger.info("RentBook page");
		
		List<BookVO> list = new ArrayList<BookVO>();
		BookVO vo = new BookVO();
		
		vo.setbNo("dd");
		list.add(vo);
		vo.setbNo("제발제발");
		list.add(vo);
		
		model.addAttribute("list",list);
		model.addAttribute("state",0);
		return "adminLibrary/adminStudyRoom/bRoom/index";
	}

	@RequestMapping(value = "adminLibrary/adminStudyRoom/cRoom/index", method = RequestMethod.GET)
	public String cRoomIndexGet(Model model) {
		logger.info("RentBook page");
		
		List<BookVO> list = new ArrayList<BookVO>();
		BookVO vo = new BookVO();
		
		vo.setbNo("dd");
		list.add(vo);
		vo.setbNo("제발제발");
		list.add(vo);
		
		model.addAttribute("list",list);
		model.addAttribute("state",0);
		return "adminLibrary/adminStudyRoom/cRoom/index";
	}

}
