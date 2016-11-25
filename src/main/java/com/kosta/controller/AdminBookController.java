package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminBookService;
import com.kosta.service.SearchService;
import com.kosta.vo.BookVO;
import com.kosta.vo.PageMaker;
import com.kosta.vo.Rent_BookVO;

@Controller
public class AdminBookController {

	private static final Logger logger = LoggerFactory.getLogger(AdminBookController.class);

	@Autowired
	private AdminBookService service;
	@Autowired
	private SearchService searchService;
	
	@RequestMapping(value = "adminLibrary/adminBook/rentBook/rent", method = RequestMethod.GET)
	public String rentGet() {
		logger.info("RentBook page");
		return "adminLibrary/adminBook/rentBook/rent";
	}

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/rent", method = RequestMethod.POST)
	public String rentPost(Model model, Rent_BookVO vo, RedirectAttributes rttr) {
		logger.info("RentBook userInfo search");
		if (vo.getBno() == null) {
			if (service.selectMember(vo) == 0) { // 입력한 ID가 없거나 잘못입력을 눌렀을때 0
				rttr.addFlashAttribute("msg", "NOID");
				return "redirect:/adminLibrary/adminBook/rentBook/rent";
			} else {
				if (service.checkLateUser(vo) == 0) { // 연체테이블에서 연체내역이 있는 사용자인지
														// 판별
														// 0이면 연체내역이 없음
					model.addAttribute("check_late", service.checkLateUser(vo));
					model.addAttribute("userInfo", service.userInfo(vo));
					model.addAttribute("rent", service.currentRent(vo));
					model.addAttribute("rcnt", service.rentCnt(vo));
					return "adminLibrary/adminBook/rentBook/rent";
				} else {
					// 연체 정보를 넘겨야함.
					model.addAttribute("check_late", service.checkLateUser(vo));
					model.addAttribute("msg", "LATE");
					model.addAttribute("userInfo", service.userInfo(vo));
					model.addAttribute("rent", service.currentRent(vo));
					model.addAttribute("rcnt", service.rentCnt(vo));
					return "adminLibrary/adminBook/rentBook/rent";
				}
			}
		} else {
			model.addAttribute("userInfo", service.userInfo(vo));
			model.addAttribute("rent", service.currentRent(vo));
			model.addAttribute("rcnt", service.rentCnt(vo));
			if (service.selectBook(vo) == 0) { // 입력한 책번호가 없거나 잘못 입력을 눌렀을때 0
				model.addAttribute("msg", "NOBOOK");
				return "adminLibrary/adminBook/rentBook/rent";
			} else {
				service.rentBook(vo);
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/rent";
			}
		}
	}

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/submit", method = RequestMethod.GET)
	public String submitGet() {
		logger.info("SubmitBook page");
		return "adminLibrary/adminBook/rentBook/submit";
	}

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/submit", method = RequestMethod.POST)
	public String submitPost(@RequestParam("select") String select, Model model, Rent_BookVO vo,
			RedirectAttributes rttr) {
		logger.info("SubmitBook page");
		// 주석
		if (select.equals("null")) {
			if (service.selectBook2(vo) == 0) { // 입력한 책이 대출중이 아닐경우 0
				model.addAttribute("msg", "NOBOOK");
				return "adminLibrary/adminBook/rentBook/submit";
			} else {
				vo.setId(service.searchID(vo));
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/submit";
			}
		} else {
			vo.setBno(select);
			vo.setId(service.searchID(vo));
			if (service.checkLateBook(vo)) {
				model.addAttribute("money", service.selectMoney(vo));
				model.addAttribute("msg", "LATEBOOK");
				service.submitLateBook(vo);
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/submit";
			} else {
				model.addAttribute("msg", "SUBMIT");
				service.submitBook(vo);
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/submit";
			}
		}
	}

////////////////////////////////////////////////////////////////////////	
	
	
	@RequestMapping(value = "adminLibrary/adminBook/**/readInfo", method = RequestMethod.GET)
	public void readInfo(Model model, @RequestParam("bNo") String bNo) throws Exception {
		logger.info("search result!  page !");
		model.addAttribute("read",searchService.readInfo(bNo));
	}

	
	@RequestMapping(value = "adminLibrary/adminBook/register/index", method = RequestMethod.GET)
	public String reg_bookGet(Model model, BookVO vo) {
		logger.info("selectBookList page");
		model.addAttribute("list",service.selectBookList(vo));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.countBookList(vo));
		model.addAttribute("pageMaker", pageMaker);

		return "adminLibrary/adminBook/register/index";
	}



}
