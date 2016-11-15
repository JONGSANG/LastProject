package com.kosta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.MyInfoDAO;
import com.kosta.vo.MemberVO;

@Service
public class MyInfoServiceImpl implements MyInfoService {
	
	@Autowired
	MyInfoDAO myInfodao;
	
	@Override
	public MemberVO myInfo(MemberVO vo) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("세션아이디"+auth.getName());
		vo.setId(auth.getName());
		return myInfodao.myInfo(vo);
	}

}
