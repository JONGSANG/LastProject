package com.kosta.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.MemberService;
import com.kosta.vo.MemberVO;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	//로그인 페이지에 접속시 세션이 있으면 다른곳으로 튕기는 기능 미구현
	@RequestMapping(value="userLibrary/member/login", method=RequestMethod.GET)
	public String loginGET(Model model, HttpSession session) {
		logger.info("로그인 페이지");
		return "userLibrary/member/login";
	}
	
	@RequestMapping(value="userLibrary/member/join", method=RequestMethod.GET)
	public String joinGET(MemberVO vo, Model model) {
		logger.info("회원가입 페이지");
		return "userLibrary/member/join";
	}
	
	@RequestMapping(value="userLibrary/member/check", method=RequestMethod.POST)
	@ResponseBody
	public String idCheck(String checkid) throws Exception {
		
		logger.info("중복확인 체크");
		
		String idCheck=memberService.idCheck(checkid);
		
		return idCheck;
	}
	
	@RequestMapping(value="userLibrary/member/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("회원가입 페이지");
		
		//회원등록(PWD암호화)
		memberService.memberJoin(vo);
		
		rttr.addFlashAttribute("join", "join");
		return "redirect:/";
	}
	
	/*@RequestMapping(value="userLibrary/popup/findID", method=RequestMethod.GET)
	public String findIDGET(Model model) {
		logger.info("아이디 찾기 페이지");
		return "userLibrary/popup/findID";
	}
	
	@RequestMapping(value="userLibrary/popup/findID", method=RequestMethod.POST)
	public String findIDPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("아이디 찾기 페이지");
		
		//먼저 DB에서 개인정보와 일치하는 값이 있는지 확인후, 결과값(메일 발송에 필요한 ID, EMAIL, NAME)을 다시 vo에 저장함 
		vo=memberService.findId(vo);
		
		//만약 일치하는 값이 없다면 vo에 저장되는 값은 null이기 때문에 if문이 실행됨
		if(vo==null){
			//ajax 수정필요, 일치하는 회원정보가 없으면
			rttr.addAttribute("faller", "false");
			return "redirect:/userLibrary/popup/findID";
		}
		
		//DB에서 개인정보와 일치하는 값이 있다면, vo에는 ID, EMAIL, NAME값이 저장되어 있으므로 vo를 매개변수로 이메일 발송
		memberService.idEmail(vo);
		rttr.addAttribute("idSuccess", "idSuccess");
		
		return "redirect:/userLibrary/member/login";
	}
	
	@RequestMapping(value="userLibrary/popup/findPassword", method=RequestMethod.GET)
	public String findPasswordGET(Model model) {
		logger.info("비밀번호 찾기 페이지");
		return "userLibrary/popup/findPassword";
	}
	
	@RequestMapping(value="userLibrary/popup/findPassword", method=RequestMethod.POST)
	public String findPasswordPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("비밀번호 찾기 페이지");
		
		//먼저 DB에서 개인정보와 일치하는 값이 있는지 확인후, 결과값(메일 발송에 필요한 ID, EMAIL, NAME)을 다시 vo에 저장함
		//PWD는 필요가 없어서 출력 안함(passwordEmail 메소드에서 PWD를 랜덤값으로 변경후 암호화해서 다시 전송해야하기때문)
		vo=memberService.findPassword(vo);
		
		//만약 일치하는 값이 없다면 vo에 저장되는 값은 null이기 때문에 if문이 실행됨
		if(vo==null){
			//ajax 수정필요, 일치하는 회원정보가 없으면
			rttr.addAttribute("false", "false");
			return "redirect:/userLibrary/popup/findPassword";
		}
		
		//DB에서 개인정보와 일치하는 값이 있다면, vo에는 ID, EMAIL, NAME값이 저장되어 있으므로
		//vo를 매개변수로 이메일 발송. 메소드 실행중에 PWD를 랜덤값으로 변경후 암호화해서 다시 전송
		memberService.passwordEmail(vo);
		rttr.addAttribute("pwdSuccess", "pwdSuccess");
		
		return "redirect:/userLibrary/member/login";
	}*/
	
	
}
