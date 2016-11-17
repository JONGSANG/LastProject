package com.kosta.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.M_BoardService;
import com.kosta.service.ServiceService;
import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;

@Controller
public class ServiceController {
 
	private static final Logger logger = LoggerFactory.getLogger(ServiceController.class);

	@Inject
	private M_BoardService service;
	@Inject
	private ServiceService service2;
	

	// 본 게시물 작성페이지 띄우기
	@RequestMapping(value = "userLibrary/service/min_board/register", method = RequestMethod.GET)	// 주소값을 정해주고 GET 방식으로 보냄
	public String registerGET(M_BoardVO vo, Model model) throws Exception {	// F_BoardVO:본 게시물 속성 값	
		
		logger.info("register get 페이지 입니다.");
		logger.info(vo.toString());		// Console 창에 띄어줌
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication(); auth = SecurityContextHolder.getContext().getAuthentication();
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적

		model.addAttribute("id", auth.getName());	// id의 정보를 담아 넘김
		
		return "userLibrary/service/min_board/register";	// register.jsp(글쓰기)페이지로 이동
	}

	// 작성페이지의 작성값을 보내기
	@RequestMapping(value = "userLibrary/service/min_board/register", method = RequestMethod.POST)	// POST방식으로 보냄
	public String registerPost(Model model, M_BoardVO vo, RedirectAttributes rttr) throws Exception {
					// vo에 담아서 보냄, RedirectAttributes로 알림창 띄움
		//id title content
		logger.info("register post");
		logger.info(vo.toString());	// Console 창에 띄어줌

		service.regist(vo);		// F_BoardService로 담은 vo를 보냄

		return "redirect:listAll";	// 업데이트된 listAll을 띄어줌
	}

	// 전체 목록 띄우기
	@RequestMapping(value = "userLibrary/service/min_board/listAll", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String listALL(Model model) throws Exception {
		
		logger.info("listAll 페이지");		// Console 창에 알림띄어줌
		
		model.addAttribute("list", service.listAll());	// 다음 페이지로 값을 넘겨줌, list라는 별칭으로 service.listAll()을 담음
		return "userLibrary/service/min_board/listAll";	// listAll.jsp 페이지로 이동
	}

	// 상세 내용으로 띄우기
	@RequestMapping(value = "userLibrary/service/min_board/read", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String read(@RequestParam("num") int num, Model model, M_Board_ReVO vo2) throws Exception {	// RequestParam으로 num 값을 가져옴
		
		logger.info("read get 페이지");		// Console 창에 알림띄어줌
		
		service.updateViewCnt(num);
		
		model.addAttribute("boardVO", service.read(num));	// boardVO라는 별칭으로 service.read(num)을 담음 , 그 num에 해당하는 content를 띄우기 위해서
		model.addAttribute("num", num);	// num 값을 보냄
		model.addAttribute("clist", service.commentList(num));// 답변 목록 띄우기 위해서
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    model.addAttribute("id", auth.getName());
		
		return "userLibrary/service/min_board/read";	// read.jsp로 페이지 이동
	}

	// 댓글 작성시 값보내서 띄우기
	@RequestMapping(value = "userLibrary/service/min_board/read", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public ModelAndView register_rePOST(@RequestParam("num") String num, M_Board_ReVO vo2, RedirectAttributes rttr)
			throws Exception {
		
		logger.info("comment post");
		logger.info(vo2.toString());	// Console 창에 알림띄어줌
		
		ModelAndView mav = new ModelAndView();	// model과 view의 역할을 해줌
		num = num.substring(0, num.lastIndexOf(","));	// 주소창에 뜨는 num값을 자르기 위해서
		mav.addObject("num", num);	// num 값을 보내줌
		service.insertComment(vo2);	// 댓글에 담은 값들 (vo2)를 F_BoardService로 보냄
		mav.setViewName("redirect:read");	// read를 업데이트해서 띄어줌	
		rttr.addFlashAttribute("result", "SUCCESS");	// 알림창을 띄어주는 부분
		
		return mav;
	}

	// 본 게시물 수정 페이지 띄우기
	@RequestMapping(value = "userLibrary/service/min_board/modify", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void modifyGET(@RequestParam("num") int num, Model model) throws Exception {
			// num은 어떤 Content인지 알아야 하므로 값을 가져옴
		
		logger.info("modify GET 페이지");		// Console창에 띄움
		
		model.addAttribute("boardVO", service.read(num));	// service.read(num)을 boardVO로 기재하여 사용
	}

	// 본 게시물에서 수정한 내용을 보내기
	@RequestMapping(value = "userLibrary/service/min_board/modify", method = RequestMethod.POST)	// 기입한 주소값으로 POST방식으로 보냄
	public ModelAndView modifyPOST(@RequestParam("num") String num, M_BoardVO board, RedirectAttributes rttr)
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
	@RequestMapping(value = "userLibrary/service/min_board/modify_re", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public void modify_reGET(@RequestParam("num") String num,@RequestParam("mnum") String mnum, Model model) throws Exception {
			// 본게시물 num의 외래키인 fnum과 댓글의 num을 가져와서 댓글을 구별
		
		logger.info("modify_re GET 페이지");		// Console창에 띄움
		
		model.addAttribute("boardVO2",service.read2(Integer.parseInt(num)));	// 댓글의 내용을 보여줌
	}

	// 댓글 수정내용 값 보내기
	@RequestMapping(value = "userLibrary/service/min_board/modify_re", method = RequestMethod.POST)	// 기입한 주소값으로 GET방식으로 보냄
	public String modify_RePOST(@RequestParam("num") String num,@RequestParam("mnum") String mnum, M_Board_ReVO board, RedirectAttributes rttr)
			throws Exception {
		
		logger.info("modify_re POST 페이지");		// Console창에 띄움

		service.update_re(board);

		return "redirect:read?num="+mnum;	// 글쓰기 num의 외래키인 댓글의 fnum을 불러옴
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/service/min_board/remove", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String removeGET(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {
		
		logger.info("remove GET 페이지");		// Console창에 띄움
		
		service.remove(num);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:listAll";	// 삭제 후의 listAll 띄어주기
	}

	// 삭제하기
	@RequestMapping(value = "userLibrary/service/min_board/remove_re", method = RequestMethod.GET)	// 기입한 주소값으로 GET방식으로 보냄
	public String remove_reGET(@RequestParam("num") String num,@RequestParam("mnum") String mnum, RedirectAttributes rttr) throws Exception {
		
		logger.info("remove_re POST 페이지");		// Console창에 띄움
		
		int n = Integer.parseInt(num);	// string 형태의 num을 int로 바꿔줌
		
		service.remove_re(n);	// int 형태의 num을 보내줌

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:read?num="+mnum;	// 댓글이 달려있는 본게시물을 띄어줌
	}
	
	//--------------------------------------- 방과후 --------------------------------------- 
		// 방과후 글 작성 폼 메소드
		@RequestMapping(value = "userLibrary/service/after/write", method = RequestMethod.GET)
		public String after_writer(AfterVO vo) {
			logger.info("이벤트 글쓰기 페이지");
			
			// 세션아이디 호출해서 vo.id에 넣음
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			vo.setId(auth.getName());
			
			
			return "userLibrary/service/after/write";
		}
		
		// 방과후 글 작성 메소드
		@RequestMapping(value = "userLibrary/service/after/write", method = RequestMethod.POST)
		public String after_write(AfterVO vo, RedirectAttributes rttr) throws Exception {
			logger.info("이벤트 글쓰기 페이지");
			
			// input 으로 전송받은 것들을 db에 입력 하고 완료 메세지 띄움
			service2.after_write(vo);
			rttr.addFlashAttribute("msg", "SUCCESS");
			
			return "redirect:/userLibrary/service/after/list";
		}
		
		// 방과후 게시판 리스트 폼 메소드
		@RequestMapping(value = "userLibrary/service/after/list", method = RequestMethod.GET)
		public String after_ListAll(Model model) throws Exception {
			logger.info("이벤트 글게시판 페이지");
			
			// after 테이블에 모든정보를 담고 list라고 선언
			model.addAttribute("list", service2.after_list());
			
			return "userLibrary/service/after/list";
		}
		
		// 방과후 게시판 상세글 메소드
		@RequestMapping(value = "userLibrary/service/after/read", method = RequestMethod.GET)
		public String after_read(@RequestParam("num") int num, Model model) throws Exception {
			logger.info("이벤트 글읽기 페이지");
			
			// 해당되는 글의 번호에 대한정보를 가져와서 출력
			model.addAttribute(service2.after_read(num));
			service2.after_viewcnt(num);
			
			return "userLibrary/service/after/read";
		}
		
		// 방과후 게시판 글 삭제 메소드
		@RequestMapping(value = "userLibrary/service/after/delete", method = RequestMethod.POST)
		public String after_delete(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {
			logger.info("이벤트 글삭제 페이지");
			
			// 해당되는 글의 번호에 대한게시글을 삭제 하고 완료 메세지 띄움
			service2.after_delete(num);
			rttr.addFlashAttribute("msg", "SUCCESS");
			return "redirect:/userLibrary/service/after/list";
		}
		
		// 방과후 게시판 글 수정 폼 메소드
		@RequestMapping(value = "userLibrary/service/after/modify", method = RequestMethod.GET)
		public String after_modify(@RequestParam("num") int num, Model model) throws Exception {
			logger.info("이벤트 글수정 페이지");
			
			// 해당되는 글의 번호의 정보를 가져와 출력
			model.addAttribute(service2.after_read(num));
			
			return "userLibrary/service/after/modify";
		}
		
		// 방과후 게시판 글 수정 메소드
		@RequestMapping(value = "userLibrary/service/after/modify", method = RequestMethod.POST)
		public String after_modify(AfterVO vo, RedirectAttributes rttr) throws Exception {
			logger.info("이벤트 글수정 페이지");
			
			// 해당되는 글의 번호에 대한게시글을 수정 하고 완료 메세지 띄움
			service2.after_modify(vo);
			rttr.addFlashAttribute("msg", "SUCCESS");
			
			return "redirect:/userLibrary/service/after/list";
		}
		
		// 방과후 이벤트 신청 폼 메소드
		@RequestMapping(value = "userLibrary/service/after/join", method = RequestMethod.GET)
		public String after_joiner(AfterVO vo, Model model) throws Exception {
			logger.info("이벤트 신청 페이지");
			
			// read에서 보낸 num값을 받아서 해당되는 id, aselect, num 출력
			model.addAttribute(service2.after_joiner(vo));
			
			return "userLibrary/service/after/join";
		}
		
		// 방과후 이벤트 신청 메소드
		@RequestMapping(value = "userLibrary/service/after/join", method = RequestMethod.POST)
		public String after_join(L_AfterVO vo, Model model) throws Exception {
			logger.info("이벤트 신청 페이지");
			
			// mapper에서 afterlist에 해당 신청자를 넣고 바로 그 글에대한 현제 인원수를 +1 해줌
			service2.after_join(vo);
			
			return "redirect:/userLibrary/service/after/list";
		}
		
		//--------------------------------------- 문화행사 --------------------------------------- 
		// 문화행사 글 작성 폼 메소드
		@RequestMapping(value = "userLibrary/service/culture/write", method = RequestMethod.GET)
		public String culture_writer(CultureVO vo) {
			logger.info("이벤트 글쓰기 페이지");
			
			// 세션아이디 호출해서 vo.id에 넣음
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			vo.setId(auth.getName());
			
			
			return "userLibrary/service/culture/write";
		}
		
		// 문화행사 글 작성 메소드
		@RequestMapping(value = "userLibrary/service/culture/write", method = RequestMethod.POST)
		public String culture_write(CultureVO vo, RedirectAttributes rttr) throws Exception {
			logger.info("이벤트 글쓰기 페이지");
			
			// input 으로 전송받은 것들을 db에 입력 하고 완료 메세지 띄움
			service2.culture_write(vo);
			rttr.addFlashAttribute("msg", "SUCCESS");
			
			return "redirect:/userLibrary/service/culture/list";
		}
		
		// 문화행사 게시판 리스트 폼 메소드
		@RequestMapping(value = "userLibrary/service/culture/list", method = RequestMethod.GET)
		public String culture_ListAll(Model model) throws Exception {
			logger.info("이벤트 글게시판 페이지");
			
			// after 테이블에 모든정보를 담고 list라고 선언
			model.addAttribute("list", service2.culture_list());
			
			return "userLibrary/service/culture/list";
		}
		
		// 문화행사 게시판 상세글 메소드
		@RequestMapping(value = "userLibrary/service/culture/read", method = RequestMethod.GET)
		public String culture_read(@RequestParam("num") int num, Model model) throws Exception {
			logger.info("이벤트 글읽기 페이지");
			
			// 해당되는 글의 번호에 대한정보를 가져와서 출력
			model.addAttribute(service2.culture_read(num));
			service2.culture_viewcnt(num);
			
			return "userLibrary/service/culture/read";
		}
		
		// 문화행사 게시판 글 삭제 메소드
		@RequestMapping(value = "userLibrary/service/culture/delete", method = RequestMethod.POST)
		public String culture_delete(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {
			logger.info("이벤트 글삭제 페이지");
			
			// 해당되는 글의 번호에 대한게시글을 삭제 하고 완료 메세지 띄움
			service2.culture_delete(num);
			rttr.addFlashAttribute("msg", "SUCCESS");
			return "redirect:/userLibrary/service/culture/list";
		}
		
		// 문화행사 게시판 글 수정 폼 메소드
		@RequestMapping(value = "userLibrary/service/culture/modify", method = RequestMethod.GET)
		public String culture_modify(@RequestParam("num") int num, Model model) throws Exception {
			logger.info("이벤트 글수정 페이지");
			
			// 해당되는 글의 번호의 정보를 가져와 출력
			model.addAttribute(service2.culture_read(num));
			
			return "userLibrary/service/culture/modify";
		}
		
		// 문화행사 게시판 글 수정 메소드
		@RequestMapping(value = "userLibrary/service/culture/modify", method = RequestMethod.POST)
		public String culture_modify(CultureVO vo, RedirectAttributes rttr) throws Exception {
			logger.info("이벤트 글수정 페이지");
			
			// 해당되는 글의 번호에 대한게시글을 수정 하고 완료 메세지 띄움
			service2.culture_modify(vo);
			rttr.addFlashAttribute("msg", "SUCCESS");
			
			return "redirect:/userLibrary/service/culture/list";
		}
		
		// 문화행사 이벤트 신청 폼 메소드
		@RequestMapping(value = "userLibrary/service/culture/join", method = RequestMethod.GET)
		public String culture_joiner(CultureVO vo, Model model) throws Exception {
			logger.info("이벤트 신청 페이지");
			
			// read에서 보낸 num값을 받아서 해당되는 id, aselect, num 출력
			model.addAttribute(service2.culture_joiner(vo));
			
			return "userLibrary/service/culture/join";
		}
		
		// 문화행사 이벤트 신청 메소드
		@RequestMapping(value = "userLibrary/service/culture/join", method = RequestMethod.POST)
		public String culture_join(L_CultureVO vo, Model model) throws Exception {
			logger.info("이벤트 신청 페이지");
			
			// mapper에서 afterlist에 해당 신청자를 넣고 바로 그 글에대한 현제 인원수를 +1 해줌
			service2.culture_join(vo);
			
			return "redirect:/userLibrary/service/culture/list";
		}
}
