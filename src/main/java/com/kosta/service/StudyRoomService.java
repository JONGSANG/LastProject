package com.kosta.service;

import java.util.List;

import com.kosta.vo.StudyRoomVO;

public interface StudyRoomService {
	
	public List<StudyRoomVO> aRoomList(StudyRoomVO vo) throws Exception;
	
	public List<StudyRoomVO> bRoomList(StudyRoomVO vo) throws Exception;
	
	public List<StudyRoomVO> cRoomList(StudyRoomVO vo) throws Exception;
}
