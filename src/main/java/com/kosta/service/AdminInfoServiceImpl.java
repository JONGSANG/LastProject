package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminInfoDAO;
import com.kosta.vo.MemberVO;

@Service
public class AdminInfoServiceImpl implements AdminInfoService {
	
	@Autowired
	private AdminInfoDAO adminInfodao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	public List<MemberVO> userList() throws Exception {	
		return null;
	}

	@Override
	public void addAdmin(MemberVO vo) throws Exception {
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		adminInfodao.addAdmin(vo);
	}

}
