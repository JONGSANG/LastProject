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

import com.kosta.service.SearchService;
import com.kosta.vo.PageMaker;
import com.kosta.vo.SearchVO;

@Controller
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	private SearchService service;

	@RequestMapping(value = "userLibrary/search/b_search/index", method = RequestMethod.GET)
	public String b_searchGET(Model model) {
		logger.info("search index(main) page !");
		return "userLibrary/search/b_search/index";
	}

	@RequestMapping(value = "userLibrary/search/b_search/result", method = RequestMethod.GET)
	public String b_searchListGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {
		model.addAttribute("list", service.b_searchResult(vo));
		
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.listBSearchCount(vo));
		model.addAttribute("pageMaker", pageMaker);
		return "userLibrary/search/b_search/index_result";
	}

	//////////////////////////////
	
	
	@RequestMapping(value = "userLibrary/search/n_search/index", method = RequestMethod.GET)
	public String n_searchGET(Model model) {
		logger.info("search index(main) page !");
		model.addAttribute("content", "result.jsp");
		return "userLibrary/search/n_search/index";
	}

	@RequestMapping(value = "userLibrary/search/n_search/result", method = RequestMethod.GET)
	public String n_searchListGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {
		
		model.addAttribute("list", service.n_searchResult(vo));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.listNSearchCount(vo));
		model.addAttribute("pageMaker", pageMaker);
		return "userLibrary/search/n_search/index_result";
	}

	@RequestMapping(value = "userLibrary/search/**/readInfo", method = RequestMethod.GET)
	public void readInfo(Model model, @RequestParam("bNo") String bNo) throws Exception {
		logger.info("search result!  page !");
		model.addAttribute("read",service.readInfo(bNo));
	}

}
