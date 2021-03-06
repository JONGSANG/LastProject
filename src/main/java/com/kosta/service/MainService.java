package com.kosta.service;

import java.util.List;

import com.kosta.vo.F_BoardVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.NoticeVO;
import com.kosta.vo.SchadulVO;

public interface MainService {
	public MemberVO getName() throws Exception;
	
	public MemberVO getNamead() throws Exception;
	
	public List<NoticeVO> noticeList() throws Exception;
	
	public List<F_BoardVO> f_boardList() throws Exception;
	
	public List<M_BoardVO> m_boardList() throws Exception;
	//스케줄
	public List<SchadulVO> scheduleList() throws Exception;
}
