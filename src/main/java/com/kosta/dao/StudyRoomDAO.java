package com.kosta.dao;

import java.util.List;

import com.kosta.vo.StudyRoomVO;

public interface StudyRoomDAO {
	public List<StudyRoomVO> aRoomList() throws Exception;
	
	public List<StudyRoomVO> bRoomList() throws Exception;
	
	public List<StudyRoomVO> cRoomList() throws Exception;
}