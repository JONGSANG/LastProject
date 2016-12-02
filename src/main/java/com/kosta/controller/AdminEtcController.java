package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminEtcService;
import com.kosta.vo.M_Board_ReVO;
import com.kosta.vo.MultiPageInfo;
import com.kosta.vo.MultiPageMaker;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageInfo_rep;
import com.kosta.vo.PageMaker;
import com.kosta.vo.PageMaker_rep;

import sun.text.normalizer.ICUBinary.Authenticate;

@Controller
public class AdminEtcController {

		private static final Logger logger = LoggerFactory.getLogger(AdminEtcController.class);
		
		@Autowired
		AdminEtcService adminEtcService;
		
		//관리자 민원리스트
		@RequestMapping(value="adminLibrary/adminEtc/mList", method=RequestMethod.GET)
		public String mListGET(MultiPageInfo page, Model model) throws Exception {
			
			logger.info("민원 리스트"); 
			
			//두개의 테이블이 각각의 페이징처리가 따로 이루어져야한다
			//리플이 달리지 않은 게시글(대기중인 민원)
			model.addAttribute("noReply", adminEtcService.noReply(page));
			//리플이 달린 게시글(처리완료 민원)
			model.addAttribute("reply", adminEtcService.reply(page));
			//한페이지에서 두개의 테이블을 페이징 처리하기 위해 클래스를 따로 생성
			MultiPageMaker multiPageMaker=new MultiPageMaker();
			//페이지 정보 설정
			multiPageMaker.setMultiPageInfo(page);
			//카운트연산
			multiPageMaker.setTotalCount(adminEtcService.noReplyCount());
			//페이징처리(UriComponents를 이용해 대기중인 민원은 multi메소드, 처리완료 민원은 multi1메소드를 이용하여 페이징 처리
			//입력받은페이지값+나머지는 기존의 페이지 정보를 호출해서 처리함
			model.addAttribute("multiPageMaker", multiPageMaker);
			
			return "adminLibrary/adminEtc/mList";
		}
		
		//관리자 민원 상세보기
		@RequestMapping(value="adminLibrary/adminEtc/mRead", method=RequestMethod.GET )
		public String mReadGET(@RequestParam("num") int num, Model model) throws Exception {
			
			logger.info("민원 상세보기 페이지");
			//글번호 상세보기
			model.addAttribute("detail", adminEtcService.detail(num));
			//글번호 댓글보기
			model.addAttribute("replyDetail", adminEtcService.replyDetail(num));
			//세션값 넘기기
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			model.addAttribute("id", auth.getName());
			
			return "adminLibrary/adminEtc/mRead";
		}
		
		@RequestMapping(value="adminLibrary/adminEtc/mRead", method=RequestMethod.POST )
		public String mReadPOST(M_Board_ReVO vo, RedirectAttributes rttr) throws Exception {
			
			logger.info("민원 댓글등록");
			//댓글작성
			adminEtcService.replyInsert(vo);
			//리다이렉트 페이지로 alert창 띄우기
			rttr.addFlashAttribute("rep", "rep");
			
			return "redirect:/adminLibrary/adminEtc/mRead?num="+vo.getNum();
		}
		
		@RequestMapping(value="/adminLibrary/adminEtc/mDelete", method=RequestMethod.GET )
		public String mDeleteGET(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {
			
			logger.info("민원 댓글삭제");
			//댓글삭제
			adminEtcService.replyDelete(num);
			//리다이렉트 페이지로 alert창 띄우기
			rttr.addFlashAttribute("repDel", "repDel");
			
			return "redirect:/adminLibrary/adminEtc/mRead?num="+num;
		}
}
