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

import com.kosta.service.StudyRoomService;
import com.kosta.vo.StudyRoomVO;

@Controller
public class UserStudyRoomController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserStudyRoomController.class);
	
	@Autowired
	StudyRoomService studyRoomService;
	
	@RequestMapping(value="userStudyRoom/aRoom/index", method=RequestMethod.GET)
	public String aRoomGET(Model model) throws Exception {
		
		logger.info("A열람실 페이지");
		
		model.addAttribute("list", studyRoomService.aRoomList());
		
		return "userStudyRoom/aRoom/index";
	}
	
	@RequestMapping(value="userStudyRoom/bRoom/index", method=RequestMethod.GET)
	public String bRoomGET(Model model) throws Exception {
		
		logger.info("B열람실 페이지");
		
		model.addAttribute("list", studyRoomService.bRoomList());
		
		return "userStudyRoom/bRoom/index";
	}
	
	@RequestMapping(value="userStudyRoom/cRoom/index", method=RequestMethod.GET)
	public String cRoomGET(Model model) throws Exception {
		
		logger.info("C열람실 페이지");
		
		model.addAttribute("list", studyRoomService.cRoomList());
		
		return "userStudyRoom/cRoom/index";
	}
	
	@RequestMapping(value="userStudyRoom/**/insert", method=RequestMethod.GET)
	public String InsertGET(@RequestParam("num") String num, Model model) throws Exception {
		
		logger.info("열람실 팝업");
		model.addAttribute("num", num);
		
		return "userStudyRoom/popup/insert";
	}
	
	@RequestMapping(value="userStudyRoom/insert", method=RequestMethod.GET)
	public String InsertPOST(StudyRoomVO vo, Model model,RedirectAttributes rttr) throws Exception {
		
		logger.info("열람실 팝업(실행)");
		//입력한 아이디나 바코드가 회원 리스트에 있는지 확인
		boolean idCheck=studyRoomService.idCheck(vo);
	
		if(idCheck==true){
			//자리 중복사용을 피하기 위해 사용중인 자리가 있는지 확인
			String seatCheck=studyRoomService.seatCheck(vo);
			
			if(seatCheck!=null){
				//좌석배정
				studyRoomService.insert(vo);
				//팝업처리 구조를 잘 모르겠는데, 아래 주소를 리턴하면 aRoom뿐만 아니라 b/cRoom도 자동으로 닫힘
				return "userStudyRoom/aRoom/index";			
			}
			//이미 사용중인 자리 있음 alert
			rttr.addFlashAttribute("al", "al");
			
			return "redirect:/userStudyRoom/popup/insert?num="+vo.getNum();
		}
		//일치하는 아이디가 없음 alert
		rttr.addFlashAttribute("noid", "noid");
		
		return "redirect:/userStudyRoom/popup/insert?num="+vo.getNum();
	}
}
