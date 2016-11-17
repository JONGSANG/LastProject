package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kosta.vo.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void create(NoticeVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.libNewsMapper.n_create", vo);	// F_BoardMapper의 create로 보냄
	}

	@Override
	public NoticeVO read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.libNewsMapper.n_read", num);
	}

	@Override
	public void update(NoticeVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.libNewsMapper.n_update", vo);
	}

	@Override
	public void delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.libNewsMapper.n_delete", num);
	}

	@Override
	public List<NoticeVO> listAll() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.libNewsMapper.n_listAll");
	}

	// 조회수 업데이트
	@Override
	public void updateViewCnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.libNewsMapper.n_updateViewCnt", num);
		
	}
}
