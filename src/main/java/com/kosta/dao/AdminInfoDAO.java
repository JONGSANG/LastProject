package com.kosta.dao;

import java.util.List;

import com.kosta.vo.MemberVO;
import com.kosta.vo.PageInfo;

public interface AdminInfoDAO {
	public List<MemberVO> userList(PageInfo page) throws Exception;
	
	public int listCount() throws Exception;
	
	public void addAdmin(MemberVO vo) throws Exception;
}
