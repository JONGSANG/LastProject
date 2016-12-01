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

import com.kosta.service.AdminStudyRoomService;
import com.kosta.vo.StudyRoomVO;

@Controller
public class AdminStudyRoomController {

	private static final Logger logger = LoggerFactory.getLogger(AdminStudyRoomController.class);
	
	@Autowired
	AdminStudyRoomService adminStudyRoomService;
	
	@RequestMapping(value="adminLibrary/adminStudyRoom/currentState", method=RequestMethod.GET)
	public String currentStateGET(Model model) {
		
		logger.info("열람실현황");
		
		return "adminLibrary/adminStudyRoom/currentState";
	}

	@RequestMapping(value="adminLibrary/adminStudyRoom/aRoom/index", method=RequestMethod.GET)
	public String aRoomGET(Model model) throws Exception {
		
		logger.info("A열람실");
		
		model.addAttribute("list", adminStudyRoomService.aRoomList());
		
		return "adminLibrary/adminStudyRoom/aRoom/index";
	}
	
	@RequestMapping(value="adminLibrary/adminStudyRoom/bRoom/index", method=RequestMethod.GET)
	public String bRoomGET(Model model) throws Exception {
		
		logger.info("B열람실");
		
		model.addAttribute("list", adminStudyRoomService.bRoomList());
		
		return "adminLibrary/adminStudyRoom/bRoom/index";
	}

	@RequestMapping(value="adminLibrary/adminStudyRoom/cRoom/index", method=RequestMethod.GET)
	public String cRoomGET(Model model) throws Exception {
		
		logger.info("C열람실");
		
		model.addAttribute("list", adminStudyRoomService.cRoomList());
		
		return "adminLibrary/adminStudyRoom/cRoom/index";
	}
	
	@RequestMapping(value="adminLibrary/adminStudyRoom/*/insert", method=RequestMethod.GET)
	public String insertPopupGET(@RequestParam("num") String num, Model model) throws Exception {
		
		logger.info("좌석배치 팝업");
		model.addAttribute("num", num);
		
		return "adminLibrary/adminStudyRoom/popup/insert";
	}
	
	@RequestMapping(value="adminStudyRoom/insert", method=RequestMethod.GET)
	public String insertGET(StudyRoomVO vo, Model model,RedirectAttributes rttr) throws Exception {
		
		logger.info("좌석배치 팝업(실행)");
		//입력한 아이디나 바코드가 회원 리스트에 있는지 확인
		boolean idCheck=adminStudyRoomService.idCheck(vo);
	
		if(idCheck==true){
			
			//자리 중복사용을 피하기 위해 사용중인 자리가 있는지 확인
			String seatCheck=adminStudyRoomService.seatCheck(vo);
			
			if(seatCheck==null){
				//좌석배정
				adminStudyRoomService.insert(vo);
				//아래 주소를 리턴하면 aRoom뿐만 아니라 b/cRoom도 자동으로 닫힘(aRoom스크립트에 location reload걸어놨기때문)
				return "adminLibrary/adminStudyRoom/aRoom/index";		
			}
			//이미 사용중인 자리 있음 alert
			rttr.addFlashAttribute("al", "al");
			
			return "redirect:/adminLibrary/adminStudyRoom/popup/insert?num="+vo.getNum();
		}
		//일치하는 아이디가 없음 alert
		rttr.addFlashAttribute("noid", "noid");
		
		return "redirect:/adminLibrary/adminStudyRoom/popup/insert?num="+vo.getNum();
	}
	
	@RequestMapping(value="adminLibrary/adminStudyRoom/*/delete", method=RequestMethod.GET)
	public String deletePopupGET(@RequestParam("num") String num, Model model) throws Exception {
		
		logger.info("좌석취소 팝업");
		model.addAttribute("detail", adminStudyRoomService.detail(num));
		
		return "adminLibrary/adminStudyRoom/popup/delete";
	}
	
	@RequestMapping(value="adminLibrary/delete", method=RequestMethod.GET)
	public String deleteGET(@RequestParam("num") String num, Model model) throws Exception {
		
		logger.info("좌석취소 팝업(실행)");
		adminStudyRoomService.delete(num);
		
		return "adminLibrary/adminStudyRoom/aRoom/index";
	}
}
