package com.kosta.service;

import com.kosta.vo.MemberVO;

public interface MyInfoService {
	
	public MemberVO myInfo() throws Exception;
	
	public boolean passwordCheck(String rawPassword) throws Exception;
	
	public MemberVO modify() throws Exception;
	
	public void update(MemberVO vo) throws Exception;
	
	public void delete() throws Exception;
}
