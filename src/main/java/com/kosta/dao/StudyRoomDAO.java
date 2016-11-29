package com.kosta.dao;

import java.util.List;

import com.kosta.vo.StudyRoomVO;

public interface StudyRoomDAO {
	public List<StudyRoomVO> RoomList(StudyRoomVO vo) throws Exception;
}
