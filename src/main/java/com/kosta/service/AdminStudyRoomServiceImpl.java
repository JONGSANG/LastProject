package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminStudyRoomDAO;
import com.kosta.vo.StudyRoomVO;

@Service
public class AdminStudyRoomServiceImpl implements AdminStudyRoomService {
	
	@Autowired
	AdminStudyRoomDAO adminStudyRoomdao;

	@Override
	public List<StudyRoomVO> aRoomList() throws Exception {
		return adminStudyRoomdao.aRoomList();
	}

	@Override
	public List<StudyRoomVO> bRoomList() throws Exception {
		return adminStudyRoomdao.bRoomList();
	}

	@Override
	public List<StudyRoomVO> cRoomList() throws Exception {
		return adminStudyRoomdao.cRoomList();
	}

	@Override
	public Boolean idCheck(StudyRoomVO vo) throws Exception {
		return adminStudyRoomdao.idCheck(vo);
	}

	@Override
	public String seatCheck(StudyRoomVO vo) throws Exception {
		return adminStudyRoomdao.seatCheck(vo);
	}

	@Override
	public void insert(StudyRoomVO vo) throws Exception {
		adminStudyRoomdao.insert(vo);
	}

	@Override
	public StudyRoomVO detail(String num) throws Exception {
		return adminStudyRoomdao.detail(num);
	}

	@Override
	public void delete(String num) throws Exception {
		adminStudyRoomdao.delete(num);
	}
}
