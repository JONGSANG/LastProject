package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.StudyRoomVO;

@Repository
public class StudyRoomDAOImpl implements StudyRoomDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<StudyRoomVO> aRoomList() throws Exception {
		return sqlSession.selectList("StudyRoomMapper.aRoomList");
	}

	@Override
	public List<StudyRoomVO> bRoomList() throws Exception {
		return sqlSession.selectList("StudyRoomMapper.bRoomList");
	}

	@Override
	public List<StudyRoomVO> cRoomList() throws Exception {
		return sqlSession.selectList("StudyRoomMapper.cRoomList");
	}

	
}
