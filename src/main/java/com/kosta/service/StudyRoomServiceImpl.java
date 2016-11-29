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
	public List<StudyRoomVO> aRoomList() throws Exception {
		return studyRoomdao.aRoomList();
	}

	@Override
	public List<StudyRoomVO> bRoomList() throws Exception {
		return studyRoomdao.bRoomList();
	}

	@Override
	public List<StudyRoomVO> cRoomList() throws Exception {
		return studyRoomdao.cRoomList();
	}
	
}
