package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminBookService;
import com.kosta.vo.Rent_BookVO;

@Controller
public class AdminBookController {

	private static final Logger logger = LoggerFactory.getLogger(AdminBookController.class);

	@Autowired
	private AdminBookService service;

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/index", method = RequestMethod.GET)
	public String indexGet() {
		logger.info("RentBook page");
		return "adminLibrary/adminBook/rentBook/index";
	}

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/index", method = RequestMethod.POST)
	public String indexPost(Model model, Rent_BookVO vo, RedirectAttributes rttr) {
		logger.info("RentBook userInfo search");
		if (vo.getBno() == null) {
			if (service.selectMember(vo) == 0) { // 입력한 ID가 없거나 잘못입력을 눌렀을때 0
				rttr.addFlashAttribute("msg", "NOID");
				return "redirect:/adminLibrary/adminBook/rentBook/index";
			} else {
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/index";
			}
		} else {
			model.addAttribute("userInfo", service.userInfo(vo));
			model.addAttribute("rent", service.currentRent(vo));
			model.addAttribute("rcnt", service.rentCnt(vo));
			if (service.selectBook(vo) == 0) { // 입력한 책번호가 없거나 잘못 입력을 눌렀을때 0
				System.out.println(service.selectBook(vo));
				System.out.println(vo.getBno());
				System.out.println(vo.getBno());
				System.out.println(vo.getBno());
				model.addAttribute("msg", "NOBOOK");
				return "adminLibrary/adminBook/rentBook/index";
			} else {
				service.rentBook(vo);
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/index";
			}
		}
	}
	
	
	
	
	
}
