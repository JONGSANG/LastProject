package com.kosta.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.SearchService;
import com.kosta.vo.HopeVO;
import com.kosta.vo.Hope_repVO;
import com.kosta.vo.PageMaker;
import com.kosta.vo.PageMaker_rep;
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
	
	//////////////////////////////  연속간행물
	

	@RequestMapping(value = "userLibrary/search/p_search/index", method = RequestMethod.GET)
	public String p_indexGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {

		model.addAttribute("list", service.p_listAll(vo));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);

	    pageMaker.setTotalCount(service.listCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
		return "userLibrary/search/p_search/index";
	}

	@RequestMapping(value = "userLibrary/search/p_search/result", method = RequestMethod.GET)
	public String p_resultGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {
		
		model.addAttribute("list", service.p_listOneAll(vo));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);

	    pageMaker.setTotalCount(service.resultCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
		return "userLibrary/search/p_search/index_result";
	}

	@RequestMapping(value = "userLibrary/search/**/readInfo", method = RequestMethod.GET)
	public void readInfo(Model model, @RequestParam("bNo") String bNo) throws Exception {
		logger.info("search result!  page !");
		model.addAttribute("read",service.readInfo(bNo));
	}
	
	////////////////////////////////
	// 희망도서 신청
	
	
	// 본 게시물 작성페이지 띄우기
	@RequestMapping(value = "userLibrary/search/b_request/register", method = RequestMethod.GET)	// 주소값을 정해주고 GET 방식으로 보냄
	public String registerGET(HopeVO vo, Model model) throws Exception {	// HopeVO:본 게시물 속성 값	
		
		logger.info("register get 페이지 입니다.");
		logger.info(vo.toString());		// Console 창에 띄어줌
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication(); auth = SecurityContextHolder.getContext().getAuthentication();
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적

		model.addAttribute("id", auth.getName());	// id의 정보를 담아 넘김
		
		return "userLibrary/search/b_request/register";	// register.jsp(글쓰기)페이지로 이동
	}

	// 작성페이지의 작성값을 보내기
	@RequestMapping(value = "userLibrary/search/b_request/register", method = RequestMethod.POST)	// POST방식으로 보냄
	public String registerPost(Model model, HopeVO vo, RedirectAttributes rttr) throws Exception {
					// vo에 담아서 보냄, RedirectAttributes로 알림창 띄움
		//id title content
		logger.info("register post");
		logger.info(vo.toString());	// Console 창에 띄어줌

		service.regist(vo);		// F_BoardService로 담은 vo를 보냄

		return "redirect:listAll";	// 업데이트된 listAll을 띄어줌
	}

	// 전체 목록 띄우기
	// 페이징 추가
	@RequestMapping(value = "userLibrary/search/b_request/listAll", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String listALL(Model model,@ModelAttribute("pageInfo") HopeVO vo) throws Exception {
		logger.info("listAll 페이지");		// Console 창에 알림띄어줌
		model.addAttribute("list", service.listAll(vo));	// 다음 페이지로 값을 넘겨줌, list라는 별칭으로 service.listAll()을 담음
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);

	    pageMaker.setTotalCount(service.f_listAllCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
		return "userLibrary/search/b_request/listAll";	// listAll.jsp 페이지로 이동
	}

	// 상세 내용으로 띄우기
	@RequestMapping(value = "userLibrary/search/b_request/read", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String read(@RequestParam("num") int num, Model model,@ModelAttribute("pageInfo_rep") Hope_repVO vo2) throws Exception {	// RequestParam으로 num 값을 가져옴
		
		logger.info("read get 페이지");		// Console 창에 알림띄어줌
		
		service.updateViewCnt(num);
		
		model.addAttribute("boardVO", service.read(num));	// boardVO라는 별칭으로 service.read(num)을 담음 , 그 num에 해당하는 content를 띄우기 위해서
		model.addAttribute("num", num);	// num 값을 보냄
		model.addAttribute("clist", service.commentList(vo2));// 답변 목록 띄우기 위해서
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    model.addAttribute("id", auth.getName());
		
		PageMaker_rep pageMaker = new PageMaker_rep();
		pageMaker.setPageInfo(vo2);
	    pageMaker.setTotalCount(service.f_repAllCount(vo2));
	   
	    model.addAttribute("pageMaker", pageMaker);
	    
		return "userLibrary/search/b_request/read";	// read.jsp로 페이지 이동
	}

	// 댓글 작성시 값보내서 띄우기
	@RequestMapping(value = "userLibrary/search/b_request/read", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public ModelAndView register_rePOST(@RequestParam("num") int num, @ModelAttribute("pageInfo_rep") Hope_repVO vo2, RedirectAttributes rttr)
			throws Exception {
		
		logger.info("comment post");
		logger.info(vo2.toString());	// Console 창에 알림띄어줌
		
		ModelAndView mav = new ModelAndView();	// model과 view의 역할을 해줌
		mav.addObject("num", num);	// num 값을 보내줌
		service.insertComment(vo2);	// 댓글에 담은 값들 (vo2)를 F_BoardService로 보냄
		mav.setViewName("redirect:/userLibrary/search/b_request/read");	// read를 업데이트해서 띄어줌	
		rttr.addFlashAttribute("result", "SUCCESS");	// 알림창을 띄어주는 부분
		
		

		return mav;
	}

	// 본 게시물 수정 페이지 띄우기
	@RequestMapping(value = "userLibrary/search/b_request/modify", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void modifyGET(@RequestParam("num") int num, Model model) throws Exception {
			// num은 어떤 Content인지 알아야 하므로 값을 가져옴
		
		logger.info("modify GET 페이지");		// Console창에 띄움
		
		model.addAttribute("boardVO", service.read(num));	// service.read(num)을 boardVO로 기재하여 사용
	}

	// 본 게시물에서 수정한 내용을 보내기
	@RequestMapping(value = "userLibrary/search/b_request/modify", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public ModelAndView modifyPOST(@RequestParam("num") String num, HopeVO board, RedirectAttributes rttr)
			throws Exception {

		logger.info("modify GET 페이지");		// Console창에 띄움
		ModelAndView mav = new ModelAndView();
		mav.addObject("num", num);

		service.modify(board);
		mav.setViewName("redirect:read");	// 수정한 후의 read페이지를 띄어줌
		rttr.addFlashAttribute("msg", "SUCCESS");	// 알림창

		return mav;
	}

	// 댓글 수정하기
	@RequestMapping(value = "userLibrary/search/b_request/modify_re", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void modify_reGET(@RequestParam("num") String num,@RequestParam("hNum") int hNum, Model model) throws Exception {
			// 본게시물 num의 외래키인 hNum과 댓글의 num을 가져와서 댓글을 구별
		
		logger.info("modify_re GET 페이지");		// Console창에 띄움
		
		model.addAttribute("boardVO2",service.read2(Integer.parseInt(num)));	// 댓글의 내용을 보여줌
	}

	// 댓글 수정내용 값 보내기
	@RequestMapping(value = "userLibrary/search/b_request/modify_re", method = RequestMethod.POST)	// 기입한 주소값으로 GET방식으로 보냄
	public String modify_RePOST(@RequestParam("num") String num,@RequestParam("hNum") int hNum, Hope_repVO board, RedirectAttributes rttr)
			throws Exception {
		
		logger.info("modify_re POST 페이지");		// Console창에 띄움

		service.update_re(board);

		return "redirect:read?num="+hNum;	// 글쓰기 num의 외래키인 댓글의 hNum을 불러옴
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/search/b_request/remove", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String removeGET(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {
		
		logger.info("remove GET 페이지");		// Console창에 띄움
		
		service.remove(num);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:listAll";	// 삭제 후의 listAll 띄어주기
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/search/b_request/remove_re", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String remove_reGET(@RequestParam("num") String num,@RequestParam("hNum") int hNum, RedirectAttributes rttr) throws Exception {
		
		logger.info("remove_re POST 페이지");		// Console창에 띄움
		
		int n = Integer.parseInt(num);	// string 형태의 num을 int로 바꿔줌
		
		service.remove_re(n);	// int 형태의 num을 보내줌

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:read?num="+hNum;	// 댓글이 달려있는 본게시물을 띄어줌
	}
	////////////////////////////////////////////////


}
