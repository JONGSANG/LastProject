package com.kosta.service;

import java.util.List;

import com.kosta.vo.MemberVO;
import com.kosta.vo.MyInfoVO;

public interface MyInfoService {
	
	public MemberVO myInfo() throws Exception;
	
	public boolean passwordCheck(String rawPassword) throws Exception;
	
	public MemberVO modify() throws Exception;
	
	public void update(MemberVO vo) throws Exception;
	
	public void delete() throws Exception;
	
	public List<MyInfoVO> currentRent() throws Exception;
	
	public List<MyInfoVO> reserveBook() throws Exception;
}
