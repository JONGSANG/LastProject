package com.kosta.service;

import java.util.List;

import com.kosta.vo.MemberVO;

public interface AdminInfoService {
	public List<MemberVO> userList() throws Exception; 
	
	public void addAdmin(MemberVO vo) throws Exception; 
}
