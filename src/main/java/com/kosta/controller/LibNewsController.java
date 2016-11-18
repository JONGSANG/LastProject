package com.kosta.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

import com.kosta.service.F_BoardService;
import com.kosta.service.NoticeService;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.NoticeVO;
import com.kosta.vo.PageMaker;
import com.kosta.vo.PageMaker_rep;

@Controller	// 이 페이지가 Controller이라는 것을 알려줌
public class LibNewsController {

	private static final Logger logger = LoggerFactory.getLogger(LibNewsController.class);

	@Inject
	private F_BoardService service;

	// 본 게시물 작성페이지 띄우기
	@RequestMapping(value = "userLibrary/libNews/f_board/register", method = RequestMethod.GET)	// 주소값을 정해주고 GET 방식으로 보냄
	public String registerGET(F_BoardVO vo, Model model) throws Exception {	// F_BoardVO:본 게시물 속성 값	
		
		logger.info("register get 페이지 입니다.");
		logger.info(vo.toString());		// Console 창에 띄어줌
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication(); auth = SecurityContextHolder.getContext().getAuthentication();
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적

		model.addAttribute("id", auth.getName());	// id의 정보를 담아 넘김
		
		return "userLibrary/libNews/f_board/register";	// register.jsp(글쓰기)페이지로 이동
	}

	// 작성페이지의 작성값을 보내기
	@RequestMapping(value = "userLibrary/libNews/f_board/register", method = RequestMethod.POST)	// POST방식으로 보냄
	public String registerPost(Model model, F_BoardVO vo, RedirectAttributes rttr) throws Exception {
					// vo에 담아서 보냄, RedirectAttributes로 알림창 띄움
		//id title content
		logger.info("register post");
		logger.info(vo.toString());	// Console 창에 띄어줌

		service.regist(vo);		// F_BoardService로 담은 vo를 보냄

		return "redirect:listAll";	// 업데이트된 listAll을 띄어줌
	}

	// 전체 목록 띄우기
	// 페이징 추가
	@RequestMapping(value = "userLibrary/libNews/f_board/listAll", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String listALL(Model model,@ModelAttribute("pageInfo") F_BoardVO vo) throws Exception {
		logger.info("listAll 페이지");		// Console 창에 알림띄어줌
		model.addAttribute("list", service.listAll(vo));	// 다음 페이지로 값을 넘겨줌, list라는 별칭으로 service.listAll()을 담음
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);

	    pageMaker.setTotalCount(service.f_listAllCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
		return "userLibrary/libNews/f_board/listAll";	// listAll.jsp 페이지로 이동
	}

	// 상세 내용으로 띄우기
	@RequestMapping(value = "userLibrary/libNews/f_board/read", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String read(@RequestParam("num") int num, Model model,@ModelAttribute("pageInfo_rep") F_Board_ReVO vo2) throws Exception {	// RequestParam으로 num 값을 가져옴
		
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
	    
		return "userLibrary/libNews/f_board/read";	// read.jsp로 페이지 이동
	}

	// 댓글 작성시 값보내서 띄우기
	@RequestMapping(value = "userLibrary/libNews/f_board/read", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public ModelAndView register_rePOST(@RequestParam("num") int num, @ModelAttribute("pageInfo_rep") F_Board_ReVO vo2, RedirectAttributes rttr)
			throws Exception {
		
		logger.info("comment post");
		logger.info(vo2.toString());	// Console 창에 알림띄어줌
		
		ModelAndView mav = new ModelAndView();	// model과 view의 역할을 해줌
		mav.addObject("num", num);	// num 값을 보내줌
		service.insertComment(vo2);	// 댓글에 담은 값들 (vo2)를 F_BoardService로 보냄
		mav.setViewName("redirect:/userLibrary/libNews/f_board/read");	// read를 업데이트해서 띄어줌	
		rttr.addFlashAttribute("result", "SUCCESS");	// 알림창을 띄어주는 부분
		
		

		return mav;
	}

	// 본 게시물 수정 페이지 띄우기
	@RequestMapping(value = "userLibrary/libNews/f_board/modify", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void modifyGET(@RequestParam("num") int num, Model model) throws Exception {
			// num은 어떤 Content인지 알아야 하므로 값을 가져옴
		
		logger.info("modify GET 페이지");		// Console창에 띄움
		
		model.addAttribute("boardVO", service.read(num));	// service.read(num)을 boardVO로 기재하여 사용
	}

	// 본 게시물에서 수정한 내용을 보내기
	@RequestMapping(value = "userLibrary/libNews/f_board/modify", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public ModelAndView modifyPOST(@RequestParam("num") String num, F_BoardVO board, RedirectAttributes rttr)
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
	@RequestMapping(value = "userLibrary/libNews/f_board/modify_re", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void modify_reGET(@RequestParam("num") String num,@RequestParam("fnum") String fnum, Model model) throws Exception {
			// 본게시물 num의 외래키인 fnum과 댓글의 num을 가져와서 댓글을 구별
		
		logger.info("modify_re GET 페이지");		// Console창에 띄움
		
		model.addAttribute("boardVO2",service.read2(Integer.parseInt(num)));	// 댓글의 내용을 보여줌
	}

	// 댓글 수정내용 값 보내기
	@RequestMapping(value = "userLibrary/libNews/f_board/modify_re", method = RequestMethod.POST)	// 기입한 주소값으로 GET방식으로 보냄
	public String modify_RePOST(@RequestParam("num") String num,@RequestParam("fnum") String fnum, F_Board_ReVO board, RedirectAttributes rttr)
			throws Exception {
		
		logger.info("modify_re POST 페이지");		// Console창에 띄움

		service.update_re(board);

		return "redirect:read?num="+fnum;	// 글쓰기 num의 외래키인 댓글의 fnum을 불러옴
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/libNews/f_board/remove", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String removeGET(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {
		
		logger.info("remove GET 페이지");		// Console창에 띄움
		
		service.remove(num);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:listAll";	// 삭제 후의 listAll 띄어주기
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/libNews/f_board/remove_re", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String remove_reGET(@RequestParam("num") String num,@RequestParam("fnum") String fnum, RedirectAttributes rttr) throws Exception {
		
		logger.info("remove_re POST 페이지");		// Console창에 띄움
		
		int n = Integer.parseInt(num);	// string 형태의 num을 int로 바꿔줌
		
		service.remove_re(n);	// int 형태의 num을 보내줌

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:read?num="+fnum;	// 댓글이 달려있는 본게시물을 띄어줌
	}
	////////////////////////////////////////////////
	
	@Inject
	private NoticeService noticeservice;

	// 본 게시물 작성페이지 띄우기
	@RequestMapping(value = "userLibrary/libNews/notice/register", method = RequestMethod.GET)	// 주소값을 정해주고 GET 방식으로 보냄
	public String no_registerGET(NoticeVO noticeVO, Model model) throws Exception {	// noticeVO:본 게시물 속성 값	
		
		logger.info("register get 페이지 입니다.");	// Console 창에 띄어줌
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication(); auth = SecurityContextHolder.getContext().getAuthentication();
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적

		model.addAttribute("id", auth.getName());	// id의 정보를 담아 넘김
		
		return "userLibrary/libNews/notice/register";	// register.jsp(글쓰기)페이지로 이동
	}

	// 작성페이지의 작성값을 보내기
	@RequestMapping(value = "userLibrary/libNews/notice/register", method = RequestMethod.POST)	// POST방식으로 보냄
	public String no_registerPost(Model model, NoticeVO noticeVO, RedirectAttributes rttr) throws Exception {
					// noticeVO에 담아서 보냄, RedirectAttributes로 알림창 띄움
		//id title content
		logger.info("register post");
		logger.info(noticeVO.toString());	// Console 창에 띄어줌

		noticeservice.regist(noticeVO);		// noticeVOService로 담은 vo를 보냄

		return "redirect:listAll";	// 업데이트된 listAll을 띄어줌
	}

	// 전체 목록 띄우기
	// 페이징 추가
	@RequestMapping(value = "userLibrary/libNews/notice/listAll", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String no_listALL(Model model, @ModelAttribute("pageInfo") NoticeVO vo) throws Exception {
		logger.info("listAll 페이지");		// Console 창에 알림띄어줌
		model.addAttribute("list", noticeservice.listAll(vo));	// 다음 페이지로 값을 넘겨줌, list라는 별칭으로 service.listAll()을 담음
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
	    pageMaker.setTotalCount(noticeservice.n_listAllCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
		return "userLibrary/libNews/notice/listAll";	// listAll.jsp 페이지로 이동
	}

	
	// 상세 내용으로 띄우기
	@RequestMapping(value = "userLibrary/libNews/notice/read", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String no_read(@RequestParam("num") int num, Model model) throws Exception {	// RequestParam으로 num 값을 가져옴
		
		logger.info("read get 페이지");		// Console 창에 알림띄어줌
		
		noticeservice.updateViewCnt(num);
		
		model.addAttribute("noticeVO", noticeservice.read(num));	// boardVO라는 별칭으로 service.read(num)을 담음 , 그 num에 해당하는 content를 띄우기 위해서
		model.addAttribute("num", num);	// num 값을 보냄
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    model.addAttribute("id", auth.getName());
		
		return "userLibrary/libNews/notice/read";	// read.jsp로 페이지 이동
	}

	// 본 게시물 수정 페이지 띄우기
	@RequestMapping(value = "userLibrary/libNews/notice/modify", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void no_modifyGET(@RequestParam("num") int num, Model model) throws Exception {
			// num은 어떤 Content인지 알아야 하므로 값을 가져옴
		
		logger.info("modify GET 페이지");		// Console창에 띄움
		
		model.addAttribute("noticeVO", noticeservice.read(num));	// service.read(num)을 boardVO로 기재하여 사용
	}

	// 본 게시물에서 수정한 내용을 보내기
	@RequestMapping(value = "userLibrary/libNews/notice/modify", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public ModelAndView no_modifyPOST(@RequestParam("num") String num, NoticeVO noticeVO, RedirectAttributes rttr)
			throws Exception {

		logger.info("modify GET 페이지");		// Console창에 띄움
		ModelAndView mav = new ModelAndView();
		mav.addObject("num", num);

		noticeservice.modify(noticeVO);
		mav.setViewName("redirect:read");	// 수정한 후의 read페이지를 띄어줌
		rttr.addFlashAttribute("msg", "SUCCESS");	// 알림창

		return mav;
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/libNews/notice/remove", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String no_removeGET(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {
		
		logger.info("remove GET 페이지");		// Console창에 띄움
		
		noticeservice.remove(num);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:listAll";	// 삭제 후의 listAll 띄어주기
	}
}
