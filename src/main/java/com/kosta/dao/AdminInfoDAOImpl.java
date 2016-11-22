package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.MemberVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SearchType;

@Repository
public class AdminInfoDAOImpl implements AdminInfoDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MemberVO> userList(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminInfoMapper.userInfo", page);
	}

	@Override
	public int listCount() throws Exception {
		return sqlSession.selectOne("AdminInfoMapper.listCount");
	}
	
	@Override
	public List<MemberVO> searchUser(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminInfoMapper.searchUser", page);
	}

	@Override
	public int searchCount(SearchType search) throws Exception {
		return sqlSession.selectOne("AdminInfoMapper.searchCount", search);
	}
	
	@Override
	@Transactional
	public void addAdmin(MemberVO vo) throws Exception {
		sqlSession.insert("c.member", vo);
		sqlSession.insert("AdminInfoMapper.admin_info", vo);
		sqlSession.insert("AdminInfoMapper.role", vo);
	}

}
