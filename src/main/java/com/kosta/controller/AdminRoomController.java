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
	
	@RequestMapping(value = "adminLibrary/adminStudyRoom/index", method = RequestMethod.GET)
	public String rentGet(Model model) {
		logger.info("RentBook page");
		
		List<BookVO> list = new ArrayList<BookVO>();
		BookVO vo = new BookVO();
		
		vo.setbNo("되라되라되라고");
		list.add(vo);
		vo.setbNo("제발제발");
		list.add(vo);
		
		model.addAttribute("list",list);
		
		System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());System.out.println(list.get(0).getbNo());list.get(0).getbNo();
		return "adminLibrary/adminStudyRoom/index";
	}
}
