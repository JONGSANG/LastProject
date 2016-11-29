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
	public List<StudyRoomVO> RoomList(StudyRoomVO vo) throws Exception {
		return sqlSession.selectList("StudyRoomMapper.roomList", vo);
	}
	
}
