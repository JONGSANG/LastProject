package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosta.service.AdminEtcService;
import com.kosta.vo.MultiPageInfo;
import com.kosta.vo.MultiPageMaker;
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
		public String mBoardGET(MultiPageInfo page, Model model) throws Exception {
			
			logger.info("민원 리스트"); 
			
			model.addAttribute("noReply", adminEtcService.noReply(page));
			model.addAttribute("reply", adminEtcService.reply(page));
			MultiPageMaker multiPageMaker=new MultiPageMaker();
			multiPageMaker.setMultiPageInfo(page);
			multiPageMaker.setTotalCount(adminEtcService.noReplyCount());
			model.addAttribute("multiPageMaker", multiPageMaker);
			
			return "adminLibrary/adminEtc/mList";
		}
}
