package com.kosta.dao;

import java.util.List;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.NoticeVO;
import com.kosta.vo.SchadulVO;

public interface MainDAO {

	public MemberVO getName(String id) throws Exception;
	
	public MemberVO getNamead(String id) throws Exception;
	
	public List<NoticeVO> noticeList() throws Exception;
	
	public List<F_BoardVO> f_boardList() throws Exception;
	
	public List<M_BoardVO> m_boardList() throws Exception;
	
	// 스케줄
	public List<SchadulVO> scheduleList() throws Exception;

}
