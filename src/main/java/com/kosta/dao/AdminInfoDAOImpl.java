package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.MemberVO;
import com.kosta.vo.SearchType;

@Repository
public class AdminInfoDAOImpl implements AdminInfoDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MemberVO> userList(SearchType search) throws Exception {
		return sqlSession.selectList("AdminInfoMapper.userInfo", search);
	}

	@Override
	public int listCount(SearchType search) throws Exception {
		return sqlSession.selectOne("AdminInfoMapper.listCount", search);
	}
	
	@Override
	public List<MemberVO> adminList(SearchType search) throws Exception {
		return sqlSession.selectList("AdminInfoMapper.adminInfo", search);
	}

	@Override
	public int adminCount(SearchType search) throws Exception {
		return sqlSession.selectOne("AdminInfoMapper.adminCount", search);
	}
	
	@Override
	@Transactional
	public void addAdmin(MemberVO vo) throws Exception {
		sqlSession.insert("AdminInfoMapper.member", vo);
		sqlSession.insert("AdminInfoMapper.admin_info", vo);
		sqlSession.insert("AdminInfoMapper.role", vo);
	}

	@Override
	public String passwordCheck(String id) throws Exception {
		return sqlSession.selectOne("AdminInfoMapper.passwordCheck", id);
	}

	@Override
	public void passwordModify(MemberVO vo) throws Exception {
		sqlSession.update("AdminInfoMapper.passwordModify", vo);
	}

}
