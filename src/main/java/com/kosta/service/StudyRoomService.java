package com.kosta.service;

import java.util.List;

import com.kosta.vo.StudyRoomVO;

public interface StudyRoomService {
	
	public List<StudyRoomVO> aRoomList() throws Exception;
	
	public List<StudyRoomVO> bRoomList() throws Exception;
	
	public List<StudyRoomVO> cRoomList() throws Exception;
	
	public String sessionCheck() throws Exception;
}
