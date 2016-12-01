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

import com.kosta.service.LibNewsService;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.F_Board_ReVO;
import com.kosta.vo.NoticeVO;
import com.kosta.vo.PageMaker;
import com.kosta.vo.PageMaker_rep;
 
//이 페이지가 Controller이라는 것을 알려줌
@Controller	
public class LibNewsController {
 
	private static final Logger logger = LoggerFactory.getLogger(LibNewsController.class);
 
	@Autowired
	private LibNewsService service;
	 /*본 게시물 작성페이지 띄우기*/
	
	// 주소값을 정해주고 GET 방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/register", method = RequestMethod.GET)
	
	// F_BoardVO:본 게시물 속성 값	, Model에서 담아서 넘겨줌
	public String registerGET(F_BoardVO vo, Model model) throws Exception {	
		
		// Console 창에 띄어줌
		logger.info("register get 페이지 입니다.");
		logger.info(vo.toString());		
 
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
 
		// id의 정보를 담아 넘김
		model.addAttribute("id", auth.getName());
		
		// register.jsp(글쓰기)페이지로 이동
		return "userLibrary/libNews/f_board/register";
	}
 
	/*작성페이지의 작성값을 보내기*/
	
	// 글쓰기 페이지에서 확인버튼을 누르면 POST방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/register", method = RequestMethod.POST)
	
	// vo에 담아서 보냄, Model에 담아 보냄
	public String registerPost(Model model, F_BoardVO vo) throws Exception {
 
		// Console 창에 띄어줌
		logger.info("register post");
		logger.info(vo.toString());	
 
		// F_BoardService로 담은 vo를 보냄
		service.f_regist(vo);		
 
		// 업데이트된 listAll을 띄어줌
		return "redirect:listAll";	
	}
 
	/*전체 목록 띄우기*/
	
	// 페이징 추가
	// 전체 목록을 GET방식으로 불러옴
	@RequestMapping(value = "userLibrary/libNews/f_board/listAll", method = RequestMethod.GET)
	public String listALL(Model model,@ModelAttribute("pageInfo") F_BoardVO vo) throws Exception {
		
		// Console 창에 알림띄어줌
		logger.info("listAll 페이지");	
		
		// 다음 페이지로 값을 넘겨줌, list라는 별칭으로 service.listAll()을 담음
		model.addAttribute("list", service.f_listAll(vo));	
		
		// 페이징 처리
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
 
	    pageMaker.setTotalCount(service.f_listAllCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
	    
	    // listAll.jsp 페이지로 이동
		return "userLibrary/libNews/f_board/listAll";	
	}
 
	/*상세 내용으로 띄우기*/
	
	// 상세내용을 GET방식으로 가져옴
	@RequestMapping(value = "userLibrary/libNews/f_board/read", method = RequestMethod.GET)
	
	public String read(F_BoardVO vo, Model model,@ModelAttribute("pageInfo_rep") F_Board_ReVO vo2) throws Exception {
		
		// Console 창에 알림띄어줌
		logger.info("read get 페이지");		
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		vo.setId(auth.getName());
		
		service.f_updateViewCnt(vo);
		
		// boardVO라는 별칭으로 service.read(vo)를 담음 , 그 vo(num을 가져오기 위해)에 해당하는 content를 띄우기 위해서
		model.addAttribute("boardVO", service.f_read(vo));	
		// num 값을 보냄
		model.addAttribute("num", vo);	
		// 답변 목록 띄우기 위해서
		model.addAttribute("clist", service.f_commentList(vo2));
	    model.addAttribute("id", auth.getName());
		
	    // 페이징 처리
		PageMaker_rep pageMaker = new PageMaker_rep();
		pageMaker.setPageInfo(vo2);
	    pageMaker.setTotalCount(service.f_repAllCount(vo2));
	   
	    model.addAttribute("pageMaker", pageMaker);
	    
	 // read.jsp로 페이지 이동
		return "userLibrary/libNews/f_board/read";	
	}
 
	/* 댓글 작성시 값보내서 띄우기*/
	
	// 댓글 작성시 값을 POST방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/read", method = RequestMethod.POST)	
	public String register_rePOST(Model model, @RequestParam("num") int num, @ModelAttribute("pageInfo_rep") F_Board_ReVO vo2)
			throws Exception {
		
		// Console 창에 알림띄어줌
		logger.info("comment post");
		logger.info(vo2.toString());	
		
		// num 값을 보내줌
		model.addAttribute("num", num);
		
		// 댓글에 담은 값들 (vo2)를 F_BoardService로 보냄
		service.f_insertComment(vo2);
 
		return "redirect:/userLibrary/libNews/f_board/read?num="+num;
	}
 
	/* 본 게시물 수정 페이지 띄우기*/
	
	// 수정페이지를  GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/modify", method = RequestMethod.GET)	
	// num은 어떤 Content인지 알아야 하므로 값을 가져옴
	public void modifyGET(F_BoardVO vo, @RequestParam("num") int num, Model model) throws Exception {
		
		// Console창에 띄움
		logger.info("modify GET 페이지");		
		
		// service.read(vo)를 boardVO로 기재하여 사용
		model.addAttribute("boardVO", service.f_read(vo));	
	}
 
	/*본 게시물에서 수정한 내용을 보내기*/
	
	// 수정내용을 POST방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/modify", method = RequestMethod.POST)	
	public String modifyPOST(Model model, @RequestParam("num") String num, F_BoardVO board)
			throws Exception {
 
		// Console창에 띄움
		logger.info("modify GET 페이지");		
		model.addAttribute("num", num);
 
		service.f_modify(board);
 
		return "redirect:read?num="+num;
	}
 
	/*댓글 수정하기*/
	
	// 댓굴 수정을 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/modify_re", method = RequestMethod.GET)	
	
	// 본게시물 num의 외래키인 fnum과 댓글의 num을 가져와서 댓글을 구별
	public void modify_reGET(@RequestParam("num") String num,@RequestParam("fnum") String fnum, Model model) throws Exception {
		
		// Console창에 띄움
		logger.info("modify_re GET 페이지");		
		
		// 댓글의 내용을 보여줌
		model.addAttribute("boardVO2",service.f_read2(Integer.parseInt(num)));	
	}
 
	/*댓글 수정내용 값 보내기*/
	
	// 댓글 수정 내용 값을 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/modify_re", method = RequestMethod.POST)	
	public String modify_RePOST(@RequestParam("num") String num,@RequestParam("fnum") String fnum, F_Board_ReVO board)
			throws Exception {
		
		// Console창에 띄움
		logger.info("modify_re POST 페이지");		
 
		service.f_update_re(board);
 
		// 글쓰기 num의 외래키인 댓글의 fnum을 불러옴
		return "redirect:read?num="+fnum;	
	}
 
	/*삭제하기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/f_board/remove", method = RequestMethod.GET)	
	public String removeGET(@RequestParam("num") int num) throws Exception {
		
		// Console창에 띄움
		logger.info("remove GET 페이지");		
		
		service.f_remove(num);
 
		// 삭제 후의 listAll 띄어주기
		return "redirect:listAll";	
	}
 
	/*삭제하기*/
	
	// 삭제값을 GET방식으로 가져옴
	@RequestMapping(value = "userLibrary/libNews/f_board/remove_re", method = RequestMethod.GET)	
	public String remove_reGET(@RequestParam("num") String num,@RequestParam("fnum") String fnum) throws Exception {
		
		// Console창에 띄움
		logger.info("remove_re POST 페이지");		
		
		// string 형태의 num을 int로 바꿔줌
		int n = Integer.parseInt(num);	
		
		// int 형태의 num을 보내줌
		service.f_remove_re(n);	
 
		// 댓글이 달려있는 본게시물을 띄어줌
		return "redirect:read?num="+fnum;	
	}
	
	///////////////////////공지사항 게시판 구현////////////////////////////////
 
	/*본 게시물 작성페이지 띄우기*/
	
	// 주소값을 정해주고 GET 방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/notice/register", method = RequestMethod.GET)	
	
	// noticeVO:본 게시물 속성 값	
	public String no_registerGET(NoticeVO noticeVO, Model model) throws Exception {	
		
		// Console 창에 띄어줌
		logger.info("register get 페이지 입니다.");	
		
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
 
		// id의 정보를 담아 넘김
		model.addAttribute("id", auth.getName());	
		
		// register.jsp(글쓰기)페이지로 이동
		return "userLibrary/libNews/notice/register";	
	}
 
	/*작성페이지의 작성값을 보내기*/
	
	// POST방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/notice/register", method = RequestMethod.POST)	
	
	// noticeVO에 담아서 보냄
	public String no_registerPost(Model model, NoticeVO noticeVO) throws Exception {
					
		//id title content
		// Console 창에 띄어줌
		logger.info("register post");
		logger.info(noticeVO.toString());	
 
		// noticeVOService로 담은 vo를 보냄
		service.n_regist(noticeVO);		
 
		// 업데이트된 listAll을 띄어줌
		return "redirect:listAll";	
	}
 
	/*전체 목록 띄우기*/
	
	// 페이징 추가
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/notice/listAll", method = RequestMethod.GET)	
	public String no_listALL(Model model, @ModelAttribute("pageInfo") NoticeVO vo) throws Exception {
		
		// Console 창에 알림띄어줌
		logger.info("listAll 페이지");		
		
		// 다음 페이지로 값을 넘겨줌, list라는 별칭으로 service.listAll()을 담음
		model.addAttribute("list", service.n_listAll(vo));	
		
		// 페이징 처리
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
	    pageMaker.setTotalCount(service.n_listAllCount(vo));
	    model.addAttribute("pageMaker", pageMaker);
	    
	    // listAll.jsp 페이지로 이동
		return "userLibrary/libNews/notice/listAll";	
	}
 
	
	/*상세 내용으로 띄우기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/notice/read", method = RequestMethod.GET)	
	
	// RequestParam으로 num 값을 가져옴
	public String no_read(@RequestParam("num") int num, Model model) throws Exception {	
		
		// Console 창에 알림띄어줌
		logger.info("read get 페이지");		
		
		service.n_updateViewCnt(num);
		
		// boardVO라는 별칭으로 service.read(num)을 담음 , 그 num에 해당하는 content를 띄우기 위해서
		model.addAttribute("noticeVO", service.n_read(num));	
		
		// num 값을 보냄
		model.addAttribute("num", num);	
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    model.addAttribute("id", auth.getName());
		
	    // read.jsp로 페이지 이동
		return "userLibrary/libNews/notice/read";	
	}
 
	/*본 게시물 수정 페이지 띄우기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/notice/modify", method = RequestMethod.GET)	
	
	// num은 어떤 Content인지 알아야 하므로 값을 가져옴
	public void no_modifyGET(@RequestParam("num") int num, Model model) throws Exception {
		
		// Console창에 띄움
		logger.info("modify GET 페이지");		
		
		// service.read(num)을 boardVO로 기재하여 사용
		model.addAttribute("noticeVO", service.n_read(num));	
	}
 
	/*본 게시물에서 수정한 내용을 보내기*/
	
	// 기입한 주소값으로 POST방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/notice/modify", method = RequestMethod.POST)	
	public String no_modifyPOST(Model model, @RequestParam("num") String num, NoticeVO noticeVO)
			throws Exception {
 
		// Console창에 띄움
		logger.info("modify GET 페이지");		
		
		model.addAttribute("num", num);
 
		service.n_modify(noticeVO);
 
		return "redirect:read?num"+num;
	}
 
	/*삭제하기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/libNews/notice/remove", method = RequestMethod.GET)	
	public String no_removeGET(@RequestParam("num") int num) throws Exception {
		
		// Console창에 띄움
		logger.info("remove GET 페이지");		
		
		service.n_remove(num);
 
		// 삭제 후의 listAll 띄어주기
		return "redirect:listAll";	
	}
	
	@RequestMapping(value="userLibrary/libNews/schedule", method=RequestMethod.GET)
	public String userList(Model model) throws Exception {
		
		logger.info("회원정보관리 페이지");
		
		
		
		return "userLibrary/libNews/schedule";
	}
	
	@RequestMapping(value="userLibrary/libNews/best/listBest", method=RequestMethod.GET)
	public String listBestGET(Model model) {
		logger.info("사서추천도서!!!!!");
		model.addAttribute("mun", service.munBest());//문학베스트도서
		model.addAttribute("com", service.comBest());//컴퓨터베스트도서
		model.addAttribute("soc", service.socBest());//사회베스트도서
		model.addAttribute("art", service.artBest());//예술베스트도서
		model.addAttribute("young", service.youngBest());//어린이베스트도서
		model.addAttribute("gan", service.ganBest());//간행물베스트도서
		
		return "userLibrary/libNews/best/listBest";
	}
	
	
	// 사서 추천 리스트 보기
		@RequestMapping(value="userLibrary/libNews/recommand/recommand", method=RequestMethod.GET)
		public String recommandGET(Model model) {
			logger.info("사서추천도서!!!!!");
			return "userLibrary/libNews/recommand/recommand";
		}
		//사이트 누르면 그 사이트로 바로 이동 기능 
		@RequestMapping(value="userLibrary/libNews/recommand/recommand_k", method=RequestMethod.GET)
		public String recommand_kGET(Model model) {
			logger.info("사서추천도서 상세보기!!!!!!!");
			return "userLibrary/libNews/recommand/recommand_k";
		}
		@RequestMapping(value="userLibrary/libNews/recommand/recommand_y", method=RequestMethod.GET)
		public String recommand_yGET(Model model) {
			logger.info("사서추천도서 상세보기!!!!!!!");
			return "userLibrary/libNews/recommand/recommand_y";
		}
		@RequestMapping(value="userLibrary/libNews/recommand/recommand_24", method=RequestMethod.GET)
		public String recommand_24GET(Model model) {
			logger.info("사서추천도서 상세보기!!!!!!!");
			return "userLibrary/libNews/recommand/recommand_24";
		}
		@RequestMapping(value="userLibrary/libNews/recommand/recommand_b", method=RequestMethod.GET)
		public String recommand_bGET(Model model) {
			logger.info("사서추천도서 상세보기!!!!!!!");
			return "userLibrary/libNews/recommand/recommand_b";
		}
}
