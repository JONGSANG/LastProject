package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.AdminInfoVO;
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

	@Override
	public MemberVO detailUser(String id) throws Exception {
		return sqlSession.selectOne("AdminInfoMapper.detailUser", id);
	}

	@Override
	public List<AdminInfoVO> detailRent(String id) throws Exception {
		return sqlSession.selectList("AdminInfoMapper.detailRent", id);
	}

	@Override
	public void roleChange(MemberVO vo) throws Exception {
		sqlSession.update("AdminInfoMapper.roleChange", vo);
	}

	@Override
	@Transactional
	public void userDelete(String id) throws Exception {
		sqlSession.delete("AdminInfoMapper.deleteRole", id);
		sqlSession.delete("AdminInfoMapper.deleteUser_info", id);
		sqlSession.delete("AdminInfoMapper.deleteMember", id);
	}

	@Override
	public MemberVO detailAdmin(String id) throws Exception {
		return sqlSession.selectOne("AdminInfoMapper.detailAdmin", id);
	}

	@Override
	public void adminPart(MemberVO vo) throws Exception {
		sqlSession.update("AdminInfoMapper.adminPart", vo);
	}

	@Override
	public void adminLevel(MemberVO vo) throws Exception {
		sqlSession.update("AdminInfoMapper.adminLevel", vo);
	}

	@Override
	@Transactional
	public void adminDelete(String id) throws Exception {
		sqlSession.delete("AdminInfoMapper.deleteRole", id);
		sqlSession.delete("AdminInfoMapper.deleteAdmin_info", id);
		sqlSession.delete("AdminInfoMapper.deleteMember", id);
	}
}
