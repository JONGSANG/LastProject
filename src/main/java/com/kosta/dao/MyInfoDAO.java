package com.kosta.dao;

import java.util.List;

import com.kosta.vo.HopeVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.MyInfoVO;
import com.kosta.vo.Rent_BookVO;

public interface MyInfoDAO {
	public MemberVO myInfo(String id) throws Exception;
	
	public String passwordCheck(String id) throws Exception;
	
	public MemberVO modify(String id) throws Exception;
	
	public void update(MemberVO vo) throws Exception;
	
	public void delete(String id) throws Exception;
	
	public List<MyInfoVO> currentRent(String id) throws Exception;
	
	public List<MyInfoVO> reserveBook(String id) throws Exception;
	
	public List<Rent_BookVO> rent(String id) throws Exception;
	
	public List<HopeVO> hope(String id) throws Exception;
	
	public List<MyInfoVO> cultureApply(String id) throws Exception;
	
	public List<MyInfoVO> afterApply(String id) throws Exception;
}
