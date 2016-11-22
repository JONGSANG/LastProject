package com.kosta.service;

import java.util.List;

import com.kosta.vo.MemberVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SearchType;

public interface AdminInfoService {
	public List<MemberVO> userList(PageInfo page) throws Exception;
	
	public int listCount() throws Exception;
	
	public List<MemberVO> searchUser(PageInfo page) throws Exception;
	
	public int searchCount(SearchType search) throws Exception; 
	
	public void addAdmin(MemberVO vo) throws Exception; 
}
