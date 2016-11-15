package com.kosta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kosta.dao.MemberDAO;
import com.kosta.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberdao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public void memberJoin(MemberVO vo) throws Exception {
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		memberdao.memberJoin(vo);
	}
	
}
