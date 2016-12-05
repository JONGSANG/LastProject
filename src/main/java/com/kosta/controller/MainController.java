package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.service.MainService;
import com.kosta.vo.MemberVO;
import com.kosta.vo.NoticeVO;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	MainService mainService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String userMain(Model model) throws Exception {
		logger.info("도서관 메인 페이지");

		// 로그인 후 세션
		model.addAttribute("vo", mainService.getName()); 
		model.addAttribute("vo2", mainService.getNamead());

		// 탭메뉴 공지사항
		model.addAttribute("notice", mainService.noticeList());

		// 탭메뉴 자유게시판
		model.addAttribute("f_board", mainService.f_boardList());

		// 탭메뉴 민원게시판
		model.addAttribute("m_board", mainService.m_boardList());

		//스케줄 정보
		model.addAttribute("list", mainService.scheduleList());
		
		// 연체료 정보 삽입
		mainService.insertLate();
		// 연체료 계산
		mainService.updateLate();
		// 연체료 대출테이블에 업데이트
		mainService.updateRent();
		return "userLibrary";
	}

	@RequestMapping(value = "/adminLibrary", method = RequestMethod.GET)
	public String adminMain(Model model) throws Exception {
		logger.info("관리자 메인 페이지");

		// 연체료 정보 삽입
		mainService.insertLate();
		// 연체료 계산
		mainService.updateLate();
		// 연체료 대출테이블에 업데이트
		mainService.updateRent();
		return "adminLibrary";
	}
	
	@RequestMapping(value = "/userStudyRoom", method = RequestMethod.GET)
	public String studyRoomMain(Model model) throws Exception {
		
		logger.info("열람실 메인 페이지");
		
		return "userStudyRoom";
	}
}
