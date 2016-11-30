package com.kosta.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.ServiceService;
import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;
import com.kosta.vo.O_BoardVO;
import com.kosta.vo.PageMaker;
import com.kosta.vo.PageMaker_rep;

@Controller
public class ServiceController {
 
	private static final Logger logger = LoggerFactory.getLogger(ServiceController.class);
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@Autowired
	private ServiceService service;
	

	/*본 게시물 작성페이지 띄우기*/
	
	// 주소값을 정해주고 GET 방식으로 보냄
	// F_BoardVO:본 게시물 속성 값	
	@RequestMapping(value = "userLibrary/service/min_board/register", method = RequestMethod.GET)	
	public String registerGET(M_BoardVO vo, Model model) throws Exception {	
		
		// Console 창에 띄어줌
		logger.info("register get 페이지 입니다.");
		logger.info(vo.toString());		
		
		// AuthenticationManager에 인증을 요청할 때 필요한 정보를 담는 목적
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		// id의 정보를 담아 넘김
		model.addAttribute("id", auth.getName());	
		
		// register.jsp(글쓰기)페이지로 이동
		return "userLibrary/service/min_board/register";	
	}

	/*작성페이지의 작성값을 보내기*/
	
	// POST방식으로 보냄
	// vo에 담아서 보냄, RedirectAttributes로 알림창 띄움
	@RequestMapping(value = "userLibrary/service/min_board/register", method = RequestMethod.POST)
	public String registerPost(Model model, M_BoardVO vo) throws Exception {
					
		//id title content
		// Console 창에 띄어줌
		logger.info("register post");
		logger.info(vo.toString());	

		// F_BoardService로 담은 vo를 보냄
		service.m_regist(vo);		

		// 업데이트된 listAll을 띄어줌
		return "redirect:listAll";	
	}

	/*전체 목록 띄우기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/service/min_board/listAll", method = RequestMethod.GET)	
	public String listALL(Model model,@ModelAttribute("pageInfo") M_BoardVO vo) throws Exception {
		
		// Console 창에 알림띄어줌
		logger.info("listAll 페이지");		
		
		// 다음 페이지로 값을 넘겨줌, list라는 별칭으로 service.listAll()을 담음
		model.addAttribute("list", service.m_listAll(vo));	
		
		// 페이징 처리
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPageInfo(vo);
		pageMaker.setTotalCount(service.m_listCount(vo));
		model.addAttribute("pageMaker", pageMaker);
		
		// listAll.jsp 페이지로 이동
		return "userLibrary/service/min_board/listAll";	
	}

	/*상세 내용으로 띄우기*/
	// 기입한 주소값으로 GET방식으로 보냄
	// RequestParam으로 num 값을 가져옴
	@RequestMapping(value = "userLibrary/service/min_board/read", method = RequestMethod.GET)	
	public String read(@RequestParam("num") int num, Model model,@ModelAttribute("pageInfo_rep") M_Board_ReVO vo2) throws Exception {	
		
		// Console 창에 알림띄어줌
		logger.info("read get 페이지");		
		
		service.m_updateViewCnt(num);
		
		// boardVO라는 별칭으로 service.read(num)을 담음 , 그 num에 해당하는 content를 띄우기 위해서
		model.addAttribute("boardVO", service.m_read(num));
		// num 값을 보냄
		model.addAttribute("num", num);	
		// 답변 목록 띄우기 위해서
		model.addAttribute("clist", service.m_commentList(vo2));
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    model.addAttribute("id", auth.getName());
	    
		PageMaker_rep pageMaker = new PageMaker_rep();
		pageMaker.setPageInfo(vo2);

	    pageMaker.setTotalCount(service.m_repAllCount(vo2));
	    model.addAttribute("pageMaker", pageMaker);
	    
	 // read.jsp로 페이지 이동
		return "userLibrary/service/min_board/read";	
	}

	/*댓글 작성시 값보내서 띄우기*/
	
	// 기입한 주소값으로 POST방식으로 보냄
	@RequestMapping(value = "userLibrary/service/min_board/read", method = RequestMethod.POST)	
	public String register_rePOST(Model model, @RequestParam("num") int num, M_Board_ReVO vo2, RedirectAttributes rttr)
			throws Exception {
		
		// Console 창에 알림띄어줌
		logger.info("comment post");
		logger.info(vo2.toString());	
		
		// num 값을 보내줌
		model.addAttribute("num", num);	
		// 댓글에 담은 값들 (vo2)를 F_BoardService로 보냄
		service.m_insertComment(vo2);	
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/userLibrary/service/min_board/read?num="+num;
	}
	
	

	/*본 게시물 수정 페이지 띄우기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/service/min_board/modify", method = RequestMethod.GET)	
	
	// num은 어떤 Content인지 알아야 하므로 값을 가져옴
	public void modifyGET(@RequestParam("num") int num, Model model) throws Exception {
			
		// Console창에 띄움
		logger.info("modify GET 페이지");		
		
		// service.read(num)을 boardVO로 기재하여 사용
		model.addAttribute("boardVO", service.m_read(num));	
	}

	/* 본 게시물에서 수정한 내용을 보내기*/
	
	// 기입한 주소값으로 POST방식으로 보냄
	@RequestMapping(value = "userLibrary/service/min_board/modify", method = RequestMethod.POST)	
	public String modifyPOST(Model model, @RequestParam("num") String num, M_BoardVO board)
			throws Exception {

		// Console창에 띄움
		logger.info("modify GET 페이지");		
		model.addAttribute("num", num);

		service.m_modify(board);
		
		return "redirect:read?num="+num;
	}

	/*댓글 수정하기*/
	
	// 기입한 주소값으로 GET방식으로 보냄	
	// 본게시물 num의 외래키인 fnum과 댓글의 num을 가져와서 댓글을 구별
	@RequestMapping(value = "userLibrary/service/min_board/modify_re", method = RequestMethod.GET)
	public void modify_reGET(@RequestParam("num") String num,@RequestParam("mnum") String mnum, Model model) throws Exception {
			
		// Console창에 띄움
		logger.info("modify_re GET 페이지");		
		
		// 댓글의 내용을 보여줌
		model.addAttribute("boardVO2",service.m_read2(Integer.parseInt(num)));	
	}

	/*댓글 수정내용 값 보내기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/service/min_board/modify_re", method = RequestMethod.POST)	
	public String modify_RePOST(@RequestParam("num") String num,@RequestParam("mnum") String mnum, M_Board_ReVO board)
			throws Exception {
		
		// Console창에 띄움
		logger.info("modify_re POST 페이지");		

		service.m_update_re(board);

		// 글쓰기 num의 외래키인 댓글의 fnum을 불러옴
		return "redirect:read?num="+mnum;	
	}

	/*삭제하기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/service/min_board/remove", method = RequestMethod.GET)	
	public String removeGET(@RequestParam("num") int num) throws Exception {
		
		// Console창에 띄움
		logger.info("remove GET 페이지");		
		
		service.m_remove(num);

		// 삭제 후의 listAll 띄어주기
		return "redirect:listAll";	
	}

	/*삭제하기*/
	
	// 기입한 주소값으로 GET방식으로 보냄
	@RequestMapping(value = "userLibrary/service/min_board/remove_re", method = RequestMethod.GET)	
	public String remove_reGET(@RequestParam("num") String num,@RequestParam("mnum") String mnum) throws Exception {
		
		// Console창에 띄움
		logger.info("remove_re POST 페이지");		
		
		// string 형태의 num을 int로 바꿔줌
		int n = Integer.parseInt(num);	
		
		// int 형태의 num을 보내줌
		service.m_remove_re(n);	

		// 댓글이 달려있는 본게시물을 띄어줌
		return "redirect:read?num="+mnum;	
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
		
		// 선택해서 올린파일을 f로 지정함
		MultipartFile f = vo.getFile();
		
		// 만약 f(파일)가 존재하면, 해당파일에 대한
		// 원본이름과, 수정된 이름을 가지게됨.
		// 그리고 newname 으로된 파일을 해당 경로에 복사해놓음(물리적경로)
		if (!f.isEmpty()) {
			String orgname = f.getOriginalFilename();
			String savedName = (uploadFile(f.getOriginalFilename(), f.getBytes()));
			String newname = savedName;
			vo.setOrgname(orgname);
			vo.setNewname(newname);
		}
		
		// input 으로 전송받은 것들을 db에 입력 하고 완료 메세지 띄움
		service.after_write(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/userLibrary/service/after/list";
	}
	
	// 방과후 게시판 리스트 폼 메소드
	@RequestMapping(value = "userLibrary/service/after/list", method = RequestMethod.GET)
	public String after_ListAll(AfterVO vo,Model model) throws Exception {
		logger.info("이벤트 글게시판 페이지"); 
		
		// after 테이블에 모든정보를 담고 list라고 선언
		model.addAttribute("list", service.after_list());
		
		return "userLibrary/service/after/list";
	}
	
	// 방과후 게시판 상세글 메소드
	@RequestMapping(value = "userLibrary/service/after/read", method = RequestMethod.GET)
	public String after_read(AfterVO vo, Model model) throws Exception {
		logger.info("이벤트 글읽기 페이지");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		// 현재 카운터값 가져옴
		model.addAttribute("after_tocnt", service.after_tocnt(vo));
		// Id를 세션id로 변경
		vo.setId(auth.getName());
		// isID 라고 변수명을 지정하고 보냄
		model.addAttribute("isID", service.after_sessionid(vo)); 
		// 해당되는 글의 번호에 대한정보를 가져와서 출력
		model.addAttribute(service.after_read(vo));
		service.after_viewcnt(vo);
		
		return "userLibrary/service/after/read";
	}
	
	// 방과후 게시판 글 삭제 메소드
	@RequestMapping(value = "userLibrary/service/after/delete", method = RequestMethod.POST)
	public String after_delete(AfterVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("이벤트 글삭제 페이지");
		
		// 삭제하는 게시글 안에있는 파일의 newname을가져옴
		// 이유는 파일을 저장할때 원본이름이 아닌 수정된 newname으로 저장했음
		String filename = vo.getNewname();
		System.out.println("filename---------------------------------- : " + filename);
		
		// 해당 파일의 물리적경로랑 위에서 filename(newname)을 합치면
		// 해당 경로의 실제 파일이 있는위치가 되서 그 파일을 삭제함
		File file = new File("C:/Last_Project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/library/resources/file/"+filename);
		file.delete();
		
		// 해당되는 글의 번호에 대한게시글을 삭제 하고 완료 메세지 띄움
		service.after_delete(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/userLibrary/service/after/list";
	}
	
	// 방과후 게시판 글 수정 폼 메소드
	@RequestMapping(value = "userLibrary/service/after/modify", method = RequestMethod.GET)
	public String after_modify(AfterVO vo, Model model) throws Exception {
		logger.info("이벤트 글수정 페이지");
		
		// 해당되는 글의 번호의 정보를 가져와 출력
		model.addAttribute(service.after_read(vo));
		
		return "userLibrary/service/after/modify";
	}
	
	// 방과후 게시판 글 수정 메소드
	@RequestMapping(value = "userLibrary/service/after/modify", method = RequestMethod.POST)
	public String after_modify(AfterVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("이벤트 글수정 페이지");
		
		String filename = vo.getNewname();
		System.out.println("filename =================== : " + filename);
		File file = new File("C:/Last_Project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/library/resources/file/"+filename);
		file.delete();
		
		MultipartFile f = vo.getFile();
		if (!f.isEmpty()) {
			String orgname = f.getOriginalFilename();
			String savedName = (uploadFile(f.getOriginalFilename(), f.getBytes()));
			String newname = savedName;
			vo.setOrgname(orgname);
			vo.setNewname(newname);
		}
		
		// 해당되는 글의 번호에 대한게시글을 수정 하고 완료 메세지 띄움
		service.after_modify(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/userLibrary/service/after/list";
	}
	
	// 방과후 이벤트 신청 폼 메소드
	@RequestMapping(value = "userLibrary/service/after/join", method = RequestMethod.GET)
	public String after_joiner(AfterVO vo, Model model) throws Exception {
		logger.info("이벤트 신청 페이지");
		
		// read에서 보낸 num값을 받아서 해당되는 id, aselect, num 출력
		model.addAttribute(service.after_joiner(vo));
		
		return "userLibrary/service/after/join";
	}
	
	// 방과후 이벤트 신청 메소드
	@RequestMapping(value = "userLibrary/service/after/join", method = RequestMethod.POST)
	public String after_join(L_AfterVO vo) throws Exception {
		logger.info("이벤트 신청 페이지");
		
		// mapper에서 afterlist에 해당 신청자를 넣고 바로 그 글에대한 현제 인원수를 +1 해줌
		service.after_join(vo);
		
		return "redirect:/userLibrary/service/after/list";
	}
	
	// 방과후 이벤트 신청 취소 메소드
	@RequestMapping(value = "userLibrary/service/after/joindel", method = RequestMethod.POST)
	public String after_joindel(L_AfterVO vo,RedirectAttributes rttr) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		// Id를 세션id로 변경
		vo.setId(auth.getName());
		
		// id 랑 anum 을 기준으로 신청취소
		service.after_joindel(vo);

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
		
		// 선택해서 올린파일을 f로 지정함
		MultipartFile f = vo.getFile();
		
		// 만약 f(파일)가 존재하면, 해당파일에 대한
		// 원본이름과, 수정된 이름을 가지게됨.
		// 그리고 newname 으로된 파일을 해당 경로에 복사해놓음(물리적경로)
		if (!f.isEmpty()) {
			String orgname = f.getOriginalFilename();
			String savedName = (uploadFile(f.getOriginalFilename(), f.getBytes()));
			String newname = savedName;
			vo.setOrgname(orgname);
			vo.setNewname(newname);
		}
		
		// input 으로 전송받은 것들을 db에 입력 하고 완료 메세지 띄움
		service.culture_write(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/userLibrary/service/culture/list";
	}
	
	// 문화행사 게시판 리스트 폼 메소드
	@RequestMapping(value = "userLibrary/service/culture/list", method = RequestMethod.GET)
	public String culture_ListAll(Model model) throws Exception {
		logger.info("이벤트 글게시판 페이지");
		
		// after 테이블에 모든정보를 담고 list라고 선언
		model.addAttribute("list", service.culture_list());
		
		return "userLibrary/service/culture/list";
	}
	
	// 문화행사 게시판 상세글 메소드
	@RequestMapping(value = "userLibrary/service/culture/read", method = RequestMethod.GET)
	public String culture_read(CultureVO vo, Model model) throws Exception {
		logger.info("이벤트 글읽기 페이지");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		// 현재 카운터값 가져옴
		model.addAttribute("culture_tocnt", service.culture_tocnt(vo));
		
		// Id를 세션id로 변경
		vo.setId(auth.getName());
		
		// isID 라고 변수명을 지정하고 보냄 
		model.addAttribute("isID", service.culture_sessionid(vo));
		 
		// 해당되는 글의 번호에 대한정보를 가져와서 출력
		model.addAttribute(service.culture_read(vo));
		service.culture_viewcnt(vo);
		
		return "userLibrary/service/culture/read";
	}
	
	// 문화행사 게시판 글 삭제 메소드
	@RequestMapping(value = "userLibrary/service/culture/delete", method = RequestMethod.POST)
	public String culture_delete(CultureVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("이벤트 글삭제 페이지");
		
		// 삭제하는 게시글 안에있는 파일의 newname을가져옴
		// 이유는 파일을 저장할때 원본이름이 아닌 수정된 newname으로 저장했음
		String filename = vo.getNewname();
		System.out.println("filename---------------------------------- : " + filename);
		
		// 해당 파일의 물리적경로랑 위에서 filename(newname)을 합치면
		// 해당 경로의 실제 파일이 있는위치가 되서 그 파일을 삭제함
		File file = new File("C:/Last_Project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/library/resources/file/"+filename);
		file.delete();
		
		// 해당되는 글의 번호에 대한게시글을 삭제 하고 완료 메세지 띄움
		service.culture_delete(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/userLibrary/service/culture/list";
	}
	
	// 문화행사 게시판 글 수정 폼 메소드
	@RequestMapping(value = "userLibrary/service/culture/modify", method = RequestMethod.GET)
	public String culture_modify(CultureVO vo, Model model) throws Exception {
		logger.info("이벤트 글수정 페이지");
		
		// 해당되는 글의 번호의 정보를 가져와 출력
		model.addAttribute(service.culture_read(vo));
		
		return "userLibrary/service/culture/modify";
	}
	
	// 문화행사 게시판 글 수정 메소드
	@RequestMapping(value = "userLibrary/service/culture/modify", method = RequestMethod.POST)
	public String culture_modify(CultureVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("이벤트 글수정 페이지");
		
		String filename = vo.getNewname();
		System.out.println("filename =================== : " + filename);
		File file = new File("C:/Last_Project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/library/resources/file/"+filename);
		file.delete();
		
		MultipartFile f = vo.getFile();
		if (!f.isEmpty()) {
			String orgname = f.getOriginalFilename();
			String savedName = (uploadFile(f.getOriginalFilename(), f.getBytes()));
			String newname = savedName;
			vo.setOrgname(orgname);
			vo.setNewname(newname);
		}
		
		// 해당되는 글의 번호에 대한게시글을 수정 하고 완료 메세지 띄움
		service.culture_modify(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/userLibrary/service/culture/list";
	}
	
	// 문화행사 이벤트 신청 폼 메소드
	@RequestMapping(value = "userLibrary/service/culture/join", method = RequestMethod.GET)
	public String culture_joiner(CultureVO vo, Model model) throws Exception {
		logger.info("이벤트 신청 페이지");
		
		// read에서 보낸 num값을 받아서 해당되는 id, aselect, num 출력
		model.addAttribute(service.culture_joiner(vo));
		
		return "userLibrary/service/culture/join";
	}
	
	// 문화행사 이벤트 신청 메소드
	@RequestMapping(value = "userLibrary/service/culture/join", method = RequestMethod.POST)
	public String culture_join(L_CultureVO vo) throws Exception {
		logger.info("이벤트 신청 페이지");
		
		// mapper에서 afterlist에 해당 신청자를 넣고 바로 그 글에대한 현제 인원수를 +1 해줌
		service.culture_join(vo);
		
		return "redirect:/userLibrary/service/culture/list";
	}
	
	// 문화행사 이벤트 신청 취소 메소드
	@RequestMapping(value = "userLibrary/service/culture/joindel", method = RequestMethod.POST)
	public String culture_joindel(L_CultureVO vo,RedirectAttributes rttr) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		// Id를 세션id로 변경
		vo.setId(auth.getName());
		
		// id 랑 anum 을 기준으로 신청취소
		service.culture_joindel(vo);

		return "redirect:/userLibrary/service/culture/list";
	}
	
	//주간 식단표 뷰페이
			@RequestMapping(value="userLibrary/service/food", method=RequestMethod.GET)
			public String foodGET(Model model) {
				logger.info("주간식단표!!!!!!");
				return "userLibrary/service/food";
			}
	//--------------------------------------- 공개자료실 ---------------------------------------
	// 공개자료실 글 작성 폼 메소드
	@RequestMapping(value = "userLibrary/service/openboard/write", method = RequestMethod.GET)
	public String openboard_join(O_BoardVO vo) throws Exception {
		logger.info("공개자료실 글 작성 폼 페이지");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		// 현재 세션아이디로 글작성 id에 띄움
		vo.setId(auth.getName());
		return "userLibrary/service/openboard/write";
	}
	
	// 공개자료실 글 작성 메소드
	@RequestMapping(value = "userLibrary/service/openboard/write", method = RequestMethod.POST)
	public String openboard_join(O_BoardVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("공개자료실 글 작성 페이지");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		// 현재 세션아이디로 글작성 id에 띄움
		vo.setId(auth.getName());
		
		// 선택해서 올린파일을 f로 지정함
		MultipartFile f = vo.getFile();
		
		// 만약 f(파일)가 존재하면, 해당파일에 대한
		// 원본이름과, 수정된 이름을 가지게됨.
		// 그리고 newname 으로된 파일을 해당 경로에 복사해놓음(물리적경로)
		if (!f.isEmpty()) {
			String orgname = f.getOriginalFilename();
			String savedName = (uploadFile(f.getOriginalFilename(), f.getBytes()));
			String newname = savedName;
			vo.setOrgname(orgname);
			vo.setNewname(newname);
		}
		
		// 게시물을 db에 등록
		service.openboard_join(vo);
		
		return "redirect:/userLibrary/service/openboard/list";
	}
	
	// 공개자료실 리스트 메소드
	@RequestMapping(value = "userLibrary/service/openboard/list", method = RequestMethod.GET)
	public String openboard_list(Model model) throws Exception {
		logger.info("공개자료실 게시판 리스트 폼 페이지");
		
		// db에 담긴 전체 리스트를 list 란 이름으로 지정
		model.addAttribute("list",service.openboard_list());
		
		return "userLibrary/service/openboard/list";
	}
	
	// 공개자료실 게시판 상세글 메소드
	@RequestMapping(value = "userLibrary/service/openboard/read", method = RequestMethod.GET)
	public String openboard_read(O_BoardVO vo, Model model) throws Exception {
		
		model.addAttribute(service.openboard_read(vo));
		
		// 해당 게시글을 읽을때마다 viewcnt(뷰카운터) +1
		service.openboard_viewcnt(vo);
		
		return "userLibrary/service/openboard/read";
	}
	
	// 공개자료실 게시판 글 삭제 메소드
	@RequestMapping(value = "userLibrary/service/openboard/delete", method = RequestMethod.POST)
	public String openboard_delete(O_BoardVO vo, RedirectAttributes rttr) throws Exception {
		
		// 삭제하는 게시글 안에있는 파일의 newname을가져옴
		// 이유는 파일을 저장할때 원본이름이 아닌 수정된 newname으로 저장했음
		String filename = vo.getNewname();
		
		// 해당 파일의 물리적경로랑 위에서 filename(newname)을 합치면
		// 해당 경로의 실제 파일이 있는위치가 되서 그 파일을 삭제함
		File file = new File("C:/Last_Project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/library/resources/file/"+filename);
		file.delete();
		
		service.openboard_delete(vo);
		return "redirect:/userLibrary/service/openboard/list";
	}
	
	// 공개자료실 게시판 글 수정 폼 메소드
	@RequestMapping(value = "userLibrary/service/openboard/modify", method = RequestMethod.GET)
	public String openboard_modify(O_BoardVO vo, Model model) throws Exception {
		model.addAttribute(service.openboard_read(vo));
		return "userLibrary/service/openboard/modify";
	}
	
	// 공개자료실 게시판 글 수정 메소드
	@RequestMapping(value = "userLibrary/service/openboard/modify", method = RequestMethod.POST)
	public String openboard_modify(O_BoardVO vo, RedirectAttributes rttr, Model model) throws Exception {
		
		// 수정 할때
		// 실제 존재하는 파일을 삭제 -> 다시 그 경로에 새로운파일을 생성 -> db 업데이트
		String filename = vo.getNewname();
		File file = new File("/resources/file/"+filename);
		file.delete();
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		vo.setId(auth.getName());
		
		MultipartFile f = vo.getFile();
		if (!f.isEmpty()) {
			String orgname = f.getOriginalFilename();
			String savedName = (uploadFile(f.getOriginalFilename(), f.getBytes()));
			String newname = savedName;
			vo.setOrgname(orgname);
			vo.setNewname(newname);
		}
		
		service.openboard_modify(vo);
		
		return "redirect:/userLibrary/service/openboard/list";
	}
	
	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		
		// 파일 중복 이름을 막기위해 UUID 사용
		UUID uid = UUID.randomUUID();
		
		// 파일이름을 저장할때
		// 랜덤이름 + _ + 실제파일명 으로 하고 uploadpath 에 실제 파일을 저장(복사) 해놓음
		// uploadpath 를 서버안에다가 지정해놓으면, 실제 프로젝트를
		// 새로고침을 안해도 서버내에 존재하기때문에 파일을 바로 다운로드 가능함.
		// 단 서버를 삭제하고 다시만들시 저장된 파일들은 전부 날라감
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		
		return savedName;
	}
}
