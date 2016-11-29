package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.StudyRoomDAO;
import com.kosta.vo.StudyRoomVO;

@Service
public class StudyRoomServiceImpl implements StudyRoomService {
	
	@Autowired
	StudyRoomDAO studyRoomdao;

	@Override
	public List<StudyRoomVO> aRoomList(StudyRoomVO vo) throws Exception {
		vo.setType("a");
		return studyRoomdao.RoomList(vo);
	}

	@Override
	public List<StudyRoomVO> bRoomList(StudyRoomVO vo) throws Exception {
		vo.setType("b");
		return studyRoomdao.RoomList(vo);
	}

	@Override
	public List<StudyRoomVO> cRoomList(StudyRoomVO vo) throws Exception {
		vo.setType("c");
		return studyRoomdao.RoomList(vo);
	}
	
}
