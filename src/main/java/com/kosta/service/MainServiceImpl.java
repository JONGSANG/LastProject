package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.MainDAO;
import com.kosta.dao.MyInfoDAO;
import com.kosta.vo.F_BoardVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.NoticeVO;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDAO maindao;
	
	@Override
	public MemberVO getName() throws Exception{
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		return maindao.getName(auth.getName());
	}

	@Override
	public List<NoticeVO> noticeList() throws Exception {
		return maindao.noticeList();
	}

	@Override
	public List<F_BoardVO> f_boardList() throws Exception {
		return maindao.f_boardList();
	}

	@Override
	public List<M_BoardVO> m_boardList() throws Exception {
		return maindao.m_boardList();
	}

	@Override
	public void updateLate() throws Exception {
		maindao.updateLate();
	}

	@Override
	public void insertLate() throws Exception {
		maindao.insertLate();
	}

}
