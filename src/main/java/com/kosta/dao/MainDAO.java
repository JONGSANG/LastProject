package com.kosta.dao;

import java.util.List;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.NoticeVO;

public interface MainDAO {

	public MemberVO getName(String id) throws Exception;
	
	public List<NoticeVO> noticeList() throws Exception;
	
	public List<F_BoardVO> f_boardList() throws Exception;
	
	public List<M_BoardVO> m_boardList() throws Exception;
	
}
