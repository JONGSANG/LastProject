package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosta.service.AdminEtcService;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageInfo_rep;
import com.kosta.vo.PageMaker;
import com.kosta.vo.PageMaker_rep;

@Controller
public class AdminEtcController {

		private static final Logger logger = LoggerFactory.getLogger(AdminEtcController.class);
		
		@Autowired
		AdminEtcService adminEtcService;
		
		@RequestMapping(value="adminLibrary/adminEtc/mList")
		public String mBoardGET(PageInfo_rep page, PageInfo page1, Model model) throws Exception {
			
			logger.info("민원 리스트"); 
			
			model.addAttribute("noReply", adminEtcService.noReply(page));
			PageMaker_rep pageMaker_rep=new PageMaker_rep();
			pageMaker_rep.setPageInfo(page);
			pageMaker_rep.setTotalCount(adminEtcService.noReplyCount());
			model.addAttribute("pageMaker_rep", pageMaker_rep);
			
			model.addAttribute("reply", adminEtcService.reply(page1));
			PageMaker pageMaker1=new PageMaker();
			pageMaker1.setPageInfo(page1);
			pageMaker1.setTotalCount(adminEtcService.replyCount());
			model.addAttribute("pageMaker1", pageMaker1);
			
			return "adminLibrary/adminEtc/mList";
		}
}
