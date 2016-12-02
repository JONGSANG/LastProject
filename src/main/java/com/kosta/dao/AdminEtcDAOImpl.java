package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;
import com.kosta.vo.MultiPageInfo;

@Repository
public class AdminEtcDAOImpl implements AdminEtcDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<M_BoardVO> noReply(MultiPageInfo page) throws Exception {
		return sqlSession.selectList("AdminEtcMapper.noReply", page);
	}

	@Override
	public int noReplyCount() throws Exception {
		return sqlSession.selectOne("AdminEtcMapper.noReplyCount");
	}

	@Override
	public List<M_BoardVO> reply(MultiPageInfo page) throws Exception {
		return sqlSession.selectList("AdminEtcMapper.reply", page);
	}

	@Override
	public int replyCount() throws Exception {
		return sqlSession.selectOne("AdminEtcMapper.replyCount");
	}

	@Override
	public M_BoardVO detail(int num) throws Exception {
		return sqlSession.selectOne("AdminEtcMapper.detail", num);
	}

	@Override
	public List<M_Board_ReVO> replyDetail(int num) throws Exception {
		return sqlSession.selectList("AdminEtcMapper.replyDetail", num);
	}

	@Override
	public void replyInsert(M_Board_ReVO vo) throws Exception {
		sqlSession.insert("AdminEtcMapper.replyInsert", vo);
	}

	@Override
	public void replyDelete(int num) throws Exception {
		sqlSession.delete("AdminEtcMapper.replyDelete", num);
	}

}
