package com.kosta.service;

import com.kosta.vo.MemberVO;

public interface MemberService {
	
	public void memberJoin(MemberVO vo) throws Exception;
	
	public MemberVO findId(MemberVO vo) throws Exception;
	
	public void idEmail(MemberVO vo) throws Exception;
	
	public MemberVO findPassword(MemberVO vo) throws Exception;
	
	public void passwordEmail(MemberVO vo) throws Exception;

	public String idCheck(String checkid) throws Exception;
}
