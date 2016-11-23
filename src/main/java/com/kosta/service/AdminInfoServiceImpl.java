package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminInfoDAO;
import com.kosta.vo.AdminInfoVO;
import com.kosta.vo.MemberVO;
import com.kosta.vo.SearchType;

@Service
public class AdminInfoServiceImpl implements AdminInfoService {
	
	@Autowired
	private AdminInfoDAO adminInfodao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	public List<MemberVO> userList(SearchType search) throws Exception {	
		return adminInfodao.userList(search);
	}
	
	@Override
	public int listCount(SearchType search) throws Exception {
		return adminInfodao.listCount(search);
	}

	@Override
	public List<MemberVO> adminList(SearchType search) throws Exception {
		return adminInfodao.adminList(search);
	}

	@Override
	public int adminCount(SearchType search) throws Exception {
		return adminInfodao.adminCount(search);
	}
	
	@Override
	public void addAdmin(MemberVO vo) throws Exception {
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		adminInfodao.addAdmin(vo);
	}

	@Override
	public boolean passwordCheck(String rawPassword) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String encodedPassword=adminInfodao.passwordCheck(auth.getName());
		return passwordEncoder.matches(rawPassword, encodedPassword);
	}

	@Override
	public void passwordModify(MemberVO vo) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		vo.setId(auth.getName());
		adminInfodao.passwordModify(vo);
	}

	@Override
	public MemberVO detailUser(String id) throws Exception {
		return adminInfodao.detailUser(id);
	}

	@Override
	public List<AdminInfoVO> detailRent(String id) throws Exception {
		return adminInfodao.detailRent(id);
	}

	@Override
	public void roleChange(MemberVO vo) throws Exception {
		adminInfodao.roleChange(vo);
	}

	@Override
	public void userDelete(String id) throws Exception {
		adminInfodao.userDelete(id);
	}

	@Override
	public MemberVO detailAdmin(String id) throws Exception {
		return adminInfodao.detailAdmin(id);
	}

	@Override
	public void adminPart(MemberVO vo) throws Exception {
		adminInfodao.adminPart(vo);
	}

	@Override
	public void adminLevel(MemberVO vo) throws Exception {
		adminInfodao.adminLevel(vo);
	}

	@Override
	public void adminDelete(String id) throws Exception {
		adminInfodao.adminDelete(id);
	}
}
