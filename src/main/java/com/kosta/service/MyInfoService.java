package com.kosta.service;

import java.util.List;

import com.kosta.vo.HopeVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.MyInfoVO;
import com.kosta.vo.Rent_BookVO;

public interface MyInfoService {

	public MemberVO myInfo() throws Exception;
	
	public boolean passwordCheck(String rawPassword) throws Exception;
	
	public MemberVO modify() throws Exception;
	
	public void update(MemberVO vo) throws Exception;
	
	public void delete() throws Exception;
	
	public List<MyInfoVO> currentRent() throws Exception;
	
	public List<MyInfoVO> reserveBook() throws Exception;
	
	public List<Rent_BookVO> rent() throws Exception;
	
	public List<HopeVO> hope() throws Exception;
	
	public List<MyInfoVO> cultureApply() throws Exception;
	
	public List<MyInfoVO> afterApply() throws Exception;

	public List<M_BoardVO> minwonList() throws Exception;
}
