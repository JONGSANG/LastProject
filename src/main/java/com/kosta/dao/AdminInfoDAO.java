package com.kosta.dao;

import java.util.List;

import com.kosta.vo.MemberVO;

public interface AdminInfoDAO {
	public List<MemberVO> userList() throws Exception;
}
