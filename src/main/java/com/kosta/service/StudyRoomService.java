package com.kosta.service;

import java.util.List;

import com.kosta.vo.ChartVO;
import com.kosta.vo.StudyRoomVO;

public interface StudyRoomService {
	
	public List<StudyRoomVO> aRoomList() throws Exception;
	
	public List<StudyRoomVO> bRoomList() throws Exception;
	
	public List<StudyRoomVO> cRoomList() throws Exception;
	
	public Boolean idCheck(StudyRoomVO vo) throws Exception;

	public String seatCheck(StudyRoomVO vo) throws Exception;
	
	public void insert(StudyRoomVO vo) throws Exception;

	public ChartVO chart() throws Exception;
	
}
