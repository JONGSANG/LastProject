package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageInfo_rep;

@Repository
public class AdminEtcDAOImpl implements AdminEtcDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<M_BoardVO> noReply(PageInfo_rep page) throws Exception {
		return sqlSession.selectList("AdminEtcMapper.noReply", page);
	}

	@Override
	public int noReplyCount() throws Exception {
		return sqlSession.selectOne("AdminEtcMapper.noReplyCount");
	}

	@Override
	public List<M_BoardVO> reply(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminEtcMapper.reply", page);
	}

	@Override
	public int replyCount() throws Exception {
		return sqlSession.selectOne("AdminEtcMapper.replyCount");
	}

}
