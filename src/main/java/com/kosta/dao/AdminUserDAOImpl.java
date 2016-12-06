package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.LateInfoVO;
import com.kosta.vo.LateVO;

@Repository
public class AdminUserDAOImpl implements AdminUserDAO {

	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<String> allMember() throws Exception {
		return sqlSession.selectList("AdminUserMapper.allMember");
	}

	@Override
	public List<String> allAdmin() throws Exception {
		return sqlSession.selectList("AdminUserMapper.allAdmin");
	}

	@Override
	public List<LateVO> selectLateUserList(LateVO vo) {
		return sqlSession.selectList("AdminUserMapper.selectLateUserList",vo);
	}

	@Override
	public List<String> lateUser() throws Exception {
		return sqlSession.selectList("AdminUserMapper.allAdmin");
	}

	@Override
	public int countLateUserList(LateVO vo) {
		return sqlSession.selectOne("AdminUserMapper.countLateUserList",vo);
	}

	@Override
	public List<LateVO> selectLateCurUserList(LateVO vo) {
		return sqlSession.selectList("AdminUserMapper.selectLateCurUserList",vo);
	}

	@Override
	public int countLateCurUserList(LateVO vo) {
		return sqlSession.selectOne("AdminUserMapper.countLateCurUserList",vo);
	}

	@Override
	public LateInfoVO lateInfo() {
		return sqlSession.selectOne("AdminUserMapper.lateInfo");
	}

	@Override
	public LateInfoVO lateUserInfo() {
		return sqlSession.selectOne("AdminUserMapper.lateUserInfo");
	}

	@Override
	public String cntLateUser() {
		return sqlSession.selectOne("AdminUserMapper.cntLateUser");
	}

	@Override
	public List<String> lateBook(String id) throws Exception {
		return sqlSession.selectList("AdminUserMapper.lateBook", id);
	}

	@Override
	public List<String> lateUser1() throws Exception {
		return sqlSession.selectList("AdminUserMapper.lateUser1");
	}

	@Override
	public String getEmail(String id) throws Exception {
		return sqlSession.selectOne("AdminUserMapper.getEmail", id);
	}

	@Override
	public String getName(String id) throws Exception {
		return sqlSession.selectOne("AdminUserMapper.getName", id);
	}
}
