package com.kosta.dao;

import com.kosta.vo.MemberVO;

public interface MyInfoDAO {
	public MemberVO myInfo(String id) throws Exception;
	
	public String passwordCheck(String id) throws Exception;
	
	public MemberVO modify(String id) throws Exception;
	
	public void update(MemberVO vo) throws Exception;
	
	public void delete(String id) throws Exception;
}
