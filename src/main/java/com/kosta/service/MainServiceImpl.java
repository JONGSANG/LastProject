package com.kosta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.MainDAO;
import com.kosta.dao.MyInfoDAO;
import com.kosta.vo.MemberVO;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDAO maindao;
	
	@Override
	public MemberVO getName() throws Exception{
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		return maindao.getName(auth.getName());
	}

}
