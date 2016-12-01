package com.kosta.service;

import java.util.List;

import com.kosta.vo.StudyRoomVO;

public interface AdminStudyRoomService {
	
	public List<StudyRoomVO> aRoomList() throws Exception;

	public List<StudyRoomVO> bRoomList() throws Exception;

	public List<StudyRoomVO> cRoomList() throws Exception;
	
	public Boolean idCheck(StudyRoomVO vo) throws Exception;

	public String seatCheck(StudyRoomVO vo) throws Exception;
	
	public void insert(StudyRoomVO vo) throws Exception;

	public StudyRoomVO detail(String num) throws Exception;

	public void delete(String num) throws Exception;
}
