package com.kosta.dao;

import java.util.List;

import com.kosta.vo.AdminInfoVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.SearchType;

public interface AdminInfoDAO {
	public List<MemberVO> userList(SearchType search) throws Exception;

	public int listCount(SearchType search) throws Exception;
	
	public List<MemberVO> adminList(SearchType search) throws Exception;

	public int adminCount(SearchType search) throws Exception;

	public void addAdmin(MemberVO vo) throws Exception;
	
	public String passwordCheck(String id) throws Exception;
	
	public void passwordModify(MemberVO vo) throws Exception;
	
	public MemberVO detailUser(String id) throws Exception;
	
	public List<AdminInfoVO> detailRent(String id) throws Exception;
	
	public void roleChange(MemberVO vo) throws Exception;
	
	public void userDelete(String id) throws Exception;
	
	public MemberVO detailAdmin(String id) throws Exception;
	
	public void  adminPart(MemberVO vo) throws Exception;
	
	public void  adminLevel(MemberVO vo) throws Exception;
	
	public void  adminDelete(String id) throws Exception;
}
