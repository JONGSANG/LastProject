package com.kosta.dao;

import com.kosta.vo.MemberVO;

public interface MemberDAO {
	public void memberJoin(MemberVO vo) throws Exception;
	
	public MemberVO findId(MemberVO vo) throws Exception;
	
	public MemberVO findPassword(MemberVO vo) throws Exception;
	
	public void passwordEmail(MemberVO vo) throws Exception;
}
