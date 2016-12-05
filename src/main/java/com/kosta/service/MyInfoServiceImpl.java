package com.kosta.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kosta.dao.MyInfoDAO;
import com.kosta.vo.HopeVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.MyInfoVO;
import com.kosta.vo.Rent_BookVO;

//권한 끌어오는 Authentication같은 반복영역을 줄이고싶은데 필드에 선언하면 에러남

@Service
public class MyInfoServiceImpl implements MyInfoService {
	
	@Autowired
	private MyInfoDAO myInfodao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//내 정보를 출력
	@Override
	public MemberVO myInfo() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.myInfo(auth.getName());
	}
	
	//입력한 비밀번호의 일치유무를 확인
	//raw - 암호화되지 않은 값(입력값), encoded - 암호화된 값(DB값)
	@Override
	public boolean passwordCheck(String rawPassword) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String encodedPassword=myInfodao.passwordCheck(auth.getName());
		return passwordEncoder.matches(rawPassword, encodedPassword);
	}

	@Override
	public MemberVO modify() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.modify(auth.getName());
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		vo.setId(auth.getName());
		myInfodao.update(vo);
	}

	@Override
	public void delete() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		myInfodao.delete(auth.getName());
	}

	@Override
	public List<MyInfoVO> currentRent() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.currentRent(auth.getName());
	}

	@Override
	public List<MyInfoVO> reserveBook() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.reserveBook(auth.getName());
	}

	@Override
	public List<Rent_BookVO> rent() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.rent(auth.getName());
	}

	@Override
	public List<HopeVO> hope() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.hope(auth.getName());
	}

	@Override
	public List<MyInfoVO> cultureApply() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.cultureApply(auth.getName());
	}

	@Override
	public List<MyInfoVO> afterApply() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.afterApply(auth.getName());
	}

	@Override
	public List<M_BoardVO> minwonList() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.minwonList(auth.getName());
	}

	@Override
	public Date delay(String bno) throws Exception {
		return myInfodao.delay(bno);
	}

	@Override
	public String delayCheck() throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return myInfodao.delayCheck(auth.getName());
	}

	@Override
	public String reserveCheck(String bno) throws Exception {
		return myInfodao.reserveCheck(bno);
	}
	
}
