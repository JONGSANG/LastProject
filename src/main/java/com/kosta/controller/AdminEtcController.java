package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminEtcController {

		private static final Logger logger = LoggerFactory.getLogger(AdminEtcController.class);
		
		@RequestMapping(value="adminLibrary/adminEtc/mBoard")
		public String mBoardGET() throws Exception {
			
			logger.info("문화행사 리스트");
			
			
			return "adminLibrary/adminEtc/mBoard";
		}
}
