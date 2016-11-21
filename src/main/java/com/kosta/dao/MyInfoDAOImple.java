package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.HopeVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.MyInfoVO;
import com.kosta.vo.Rent_BookVO;

@Repository
public class MyInfoDAOImple implements MyInfoDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public MemberVO myInfo(String id) throws Exception {
		return sqlSession.selectOne("MyInfoMapper.myInfo", id);
	}

	@Override
	public String passwordCheck(String id) throws Exception {
		return sqlSession.selectOne("MyInfoMapper.passwordCheck", id);
	}

	@Override
	public MemberVO modify(String id) throws Exception {
		return sqlSession.selectOne("MyInfoMapper.modify", id);
	}

	@Override
	@Transactional
	public void update(MemberVO vo) throws Exception {
		sqlSession.update("MyInfoMapper.updateMember", vo);
		sqlSession.update("MyInfoMapper.updateUser_info", vo);
	}

	@Override
	@Transactional
	public void delete(String id) throws Exception {
		sqlSession.delete("MyInfoMapper.deleteUser_info", id);
		sqlSession.delete("MyInfoMapper.deleteRole", id);
		sqlSession.delete("MyInfoMapper.deleteMember", id);
	}

	@Override
	public List<MyInfoVO> currentRent(String id) throws Exception {
		return sqlSession.selectList("MyInfoMapper.currentRent", id);
	}

	@Override
	public List<MyInfoVO> reserveBook(String id) throws Exception {
		return sqlSession.selectList("MyInfoMapper.reserveBook", id);
	}

	@Override
	public List<Rent_BookVO> rent(String id) throws Exception {
		return sqlSession.selectList("MyInfoMapper.rent", id);
	}

	@Override
	public List<HopeVO> hope(String id) throws Exception {
		return sqlSession.selectList("MyInfoMapper.hope", id);
	}

	@Override
	public List<MyInfoVO> cultureApply(String id) throws Exception {
		return sqlSession.selectList("MyInfoMapper.culture", id);
	}

	@Override
	public List<MyInfoVO> afterApply(String id) throws Exception {
		return sqlSession.selectList("MyInfoMapper.after", id);
	}

}
