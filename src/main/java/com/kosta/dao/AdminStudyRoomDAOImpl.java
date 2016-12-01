package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.StudyRoomVO;

@Repository
public class AdminStudyRoomDAOImpl implements AdminStudyRoomDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<StudyRoomVO> aRoomList() throws Exception {
		return sqlSession.selectList("AdminStudyRoomMapper.aRoomList");
	}

	@Override
	public List<StudyRoomVO> bRoomList() throws Exception {
		return sqlSession.selectList("AdminStudyRoomMapper.bRoomList");
	}

	@Override
	public List<StudyRoomVO> cRoomList() throws Exception {
		return sqlSession.selectList("AdminStudyRoomMapper.cRoomList");
	}

	@Override
	public Boolean idCheck(StudyRoomVO vo) throws Exception {
		return sqlSession.selectOne("AdminStudyRoomMapper.idCheck", vo);
	}

	@Override
	public String seatCheck(StudyRoomVO vo) throws Exception {
		return sqlSession.selectOne("AdminStudyRoomMapper.seatCheck", vo);
	}

	@Override
	public void insert(StudyRoomVO vo) throws Exception {
		sqlSession.insert("AdminStudyRoomMapper.insert", vo);
	}

	@Override
	public StudyRoomVO detail(String num) throws Exception {
		return sqlSession.selectOne("AdminStudyRoomMapper.detail", num);
	}

	@Override
	public void delete(String num) throws Exception {
		sqlSession.update("AdminStudyRoomMapper.delete", num);
	}

}
