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

import com.kosta.service.SearchService;
import com.kosta.vo.HopeVO;
import com.kosta.vo.Hope_repVO;
import com.kosta.vo.PageMaker;
import com.kosta.vo.PageMaker_rep;
import com.kosta.vo.ReserveVO;
import com.kosta.vo.SearchVO;

@Controller
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	private SearchService service;

	// 지정해준 경로를 GET방식으로 보내줌_도서 검색 창 띄우기
	@RequestMapping(value = "userLibrary/search/b_search/index", method = RequestMethod.GET)
	public String b_searchGET(Model model) {
		// 콘솔창에 띄우기
		logger.info("search index(main) page !");
		
		// index.jsp로 이동
		return "userLibrary/search/b_search/index";
	}

	// 도서 검색 후 결과창 
	@RequestMapping(value = "userLibrary/search/b_search/result", method = RequestMethod.GET)
	public String b_searchListGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {
		// 도서 검색 결과를 list라는 별칭을 지정해주어 값을 넘겨줌
		model.addAttribute("list", service.b_searchResult(vo));
		
		// 페이징 처리
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.listBSearchCount(vo));
		model.addAttribute("pageMaker", pageMaker);
		
		// 도서 검색 결과를 index_result로 보내줌
		return "userLibrary/search/b_search/index_result";
	}

	//////////////////////////////
	
	// 신착도서검색창 띄우기
	@RequestMapping(value = "userLibrary/search/n_search/index", method = RequestMethod.GET)
	public String n_searchGET(Model model) {
		// 콘솔창에 띄어줌
		logger.info("search index(main) page !");
		
		// index.jsp로 이동
		return "userLibrary/search/n_search/index";
	}

	// 신착도서검색을 했을 때 결과창 띄우기
	@RequestMapping(value = "userLibrary/search/n_search/result", method = RequestMethod.GET)
	// Model에 담아 값을 보낼 것임
	public String n_searchListGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {
		// service.n_searchResult(vo)를 list라는 별칭을 줌
		model.addAttribute("list", service.n_searchResult(vo));
		
		// 페이징 처리
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.listNSearchCount(vo));
		model.addAttribute("pageMaker", pageMaker);
		//index_result창을 띄어줌
		return "userLibrary/search/n_search/index_result";
	}	
	
	//////////////////////////////  연속간행물
	
	// 모든 연속 간행물 띄우기
	@RequestMapping(value = "userLibrary/search/p_search/index", method = RequestMethod.GET)
	public String p_indexGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {

		// 연속간행물의 가져온 모든 목록을 list로 지정해서 값을 넘김
		model.addAttribute("list", service.p_listAll(vo));
		//페이징 처리
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);

	    pageMaker.setTotalCount(service.listCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
	    // index.jsp로 넘어감
		return "userLibrary/search/p_search/index";
	}

	// 모든 연속 간행물 중 하나를 선택하였을 때 그 간행물 종류의 목록들을 띄우게 함
	@RequestMapping(value = "userLibrary/search/p_search/result", method = RequestMethod.GET)
	public String p_resultGET(Model model,@ModelAttribute("pageInfo") SearchVO vo) throws Exception {
		
		// 모든 목록 중 하나를 선택하였을 때 그 종류의 간행물 목록의 정보를 list로 담아 넘김
		model.addAttribute("list", service.p_listOneAll(vo));
		// 페이징 처리
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);

	    pageMaker.setTotalCount(service.resultCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
	    // index_result로 값을 넘겨줌 
		return "userLibrary/search/p_search/index_result";
	}

	// 목록 중 하나를 선택하였을 때 그 책의 정보를 띄어준다.
	@RequestMapping(value = "userLibrary/search/**/readInfo", method = RequestMethod.GET)
	public void readInfo(Model model, @RequestParam("bNo") String bNo) throws Exception {
		logger.info("search result!  page !");
		 
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println(auth.getName());
		System.out.println(auth.getName());
		System.out.println(auth.getName());
		System.out.println(auth.getName());
		//장애여부를 확인함 (도서 대출 배달서비스 시 필요)
		model.addAttribute("checkUser", service.checkUser(auth.getName()));
		// 책정보들을 read로 지정하여 값을 넘겨줌
		model.addAttribute("read",service.readInfo(bNo));
		// 주소창에 readInfo가 띄어지면 해당되는 책정보가 뜬다.
	}
	
	// 대출 예약
	@RequestMapping(value="/userLibrary/service/reserve", method=RequestMethod.GET)
	public String reserveGET(ReserveVO vo) throws Exception{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		vo.setId(auth.getName());
		service.reserve(vo);
		return "redirect:/userLibrary/search/b_search/readInfo?bNo="+vo.getBno();
	}
	////////////////////////////////
	// 희망도서 신청
	
	
	// 본 게시물 작성페이지 띄우기
	@RequestMapping(value = "userLibrary/search/b_request/register", method = RequestMethod.GET)	// 주소값을 정해주고 GET 방식으로 보냄
	public String registerGET(HopeVO vo, Model model) throws Exception {	// HopeVO:본 게시물 속성 값	
		
		logger.info("register get 페이지 입니다.");
		logger.info(vo.toString());		// Console 창에 띄어줌
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적

		model.addAttribute("id", auth.getName());	// id의 정보를 담아 넘김
		
		return "userLibrary/search/b_request/register";	// register.jsp(글쓰기)페이지로 이동
	}

	// 작성페이지의 작성값을 보내기
	@RequestMapping(value = "userLibrary/search/b_request/register", method = RequestMethod.POST)	// POST방식으로 보냄
	public String registerPost(Model model, HopeVO vo) throws Exception {
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
	public String read(HopeVO vo, Model model,@ModelAttribute("pageInfo_rep") Hope_repVO vo2) throws Exception {	// RequestParam으로 num 값을 가져옴
		
		logger.info("read get 페이지");		// Console 창에 알림띄어줌
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		vo.setId(auth.getName());
		
		service.updateViewCnt(vo);
		
		model.addAttribute("boardVO", service.read(vo));	// boardVO라는 별칭으로 service.read(num)을 담음 , 그 num에 해당하는 content를 띄우기 위해서
		model.addAttribute("num", vo);	// num 값을 보냄
		model.addAttribute("clist", service.commentList(vo2));// 답변 목록 띄우기 위해서
		
	    model.addAttribute("id", auth.getName());
		
		PageMaker_rep pageMaker = new PageMaker_rep();
		pageMaker.setPageInfo(vo2);
	    pageMaker.setTotalCount(service.f_repAllCount(vo2));
	   
	    model.addAttribute("pageMaker", pageMaker);
	    
		return "userLibrary/search/b_request/read";	// read.jsp로 페이지 이동
	}

	// 댓글 작성시 값보내서 띄우기
	@RequestMapping(value = "userLibrary/search/b_request/read", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public String register_rePOST(Model model, @RequestParam("num") int num, @ModelAttribute("pageInfo_rep") Hope_repVO vo2)
			throws Exception {
		
		logger.info("comment post");
		logger.info(vo2.toString());	// Console 창에 알림띄어줌
		
		model.addAttribute("num", num);	// num 값을 보내줌
		
		service.insertComment(vo2);	// 댓글에 담은 값들 (vo2)를 F_BoardService로 보냄
		
		return "redirect:/userLibrary/search/b_request/read?num="+num;
	}

	// 본 게시물 수정 페이지 띄우기
	@RequestMapping(value = "userLibrary/search/b_request/modify", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void modifyGET(HopeVO vo, @RequestParam("num") int num, Model model) throws Exception {
			// num은 어떤 Content인지 알아야 하므로 값을 가져옴
		
		logger.info("modify GET 페이지");		// Console창에 띄움
		
		model.addAttribute("boardVO", service.read(vo));	// service.read(num)을 boardVO로 기재하여 사용
	}

	// 본 게시물에서 수정한 내용을 보내기
	@RequestMapping(value = "userLibrary/search/b_request/modify", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public String modifyPOST(Model model, @RequestParam("num") String num, HopeVO board)
			throws Exception {

		logger.info("modify GET 페이지");		// Console창에 띄움
		model.addAttribute("num", num);

		service.modify(board);

		return "redirect:read?num="+num;
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
	public String modify_RePOST(@RequestParam("num") String num,@RequestParam("hNum") int hNum, Hope_repVO board)
			throws Exception {
		
		logger.info("modify_re POST 페이지");		// Console창에 띄움

		service.update_re(board);

		return "redirect:read?num="+hNum;	// 글쓰기 num의 외래키인 댓글의 hNum을 불러옴
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/search/b_request/remove", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String removeGET(@RequestParam("num") int num) throws Exception {
		
		logger.info("remove GET 페이지");		// Console창에 띄움
		
		service.remove(num);

		return "redirect:listAll";	// 삭제 후의 listAll 띄어주기
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/search/b_request/remove_re", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String remove_reGET(@RequestParam("num") String num,@RequestParam("hNum") int hNum) throws Exception {
		
		logger.info("remove_re POST 페이지");		// Console창에 띄움
		
		int n = Integer.parseInt(num);	// string 형태의 num을 int로 바꿔줌
		
		service.remove_re(n);	// int 형태의 num을 보내줌

		return "redirect:read?num="+hNum;	// 댓글이 달려있는 본게시물을 띄어줌
	}
	////////////////////////////////////////////////


}
