package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.ServiceDAO;
import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;

@Service
public class ServiceServiceImpl implements ServiceService {
	@Autowired
	private ServiceDAO dao;
	
	//--------------------------------------- 방과후 --------------------------------------- 
	// 방과후 글 작성 메소드
	@Override
	public void after_write(AfterVO vo) throws Exception {
		dao.after_write(vo);	
	}
	
	// 방과후 게시판 리스트 폼 메소드
	@Override
	public List<AfterVO> after_list() throws Exception {
		return dao.after_list();
	}
	
	// 방과후 게시판 상세글 메소드
	@Override
	public AfterVO after_read(int num) throws Exception {
		return dao.after_read(num);
		
	}
	
	// 방과후 게시판 상세글 조회수 메소드
	@Override
	public void after_viewcnt(int num) throws Exception {
		dao.after_viewcnt(num);
		
	}
	
	// 방과후 게시판 글 삭제 메소드
	@Override
	public void after_delete(int num) throws Exception {
		dao.after_delete(num);
	
	}
	
	// 방과후 게시판 글 수정 메소드
	@Override
	public void after_modify(AfterVO vo) throws Exception {
		dao.after_modify(vo);
		
	}
	
	// 방과후 이벤트 신청 폼 메소드
	@Override
	public AfterVO after_joiner(AfterVO vo) throws Exception {
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	
	// 해당 글 번호에 대한 정보를 가져와 vo에 담음
	vo = dao.after_joiner(vo);
	
	// 해당 글 번호에 대한 정보중에 id를 현제 로그인중인 세션 id로 바꿈
	vo.setId(auth.getName());
	return vo;
	}
	
	// 방과후 이벤트 신청 메소드
	@Override
	public void after_join(L_AfterVO vo) throws Exception{
		dao.after_join(vo);
		
	}
	
	//--------------------------------------- 문화행사 ---------------------------------------
	// 문화행사 글 작성 메소드
	@Override
	public void culture_write(CultureVO vo) throws Exception {
		dao.culture_write(vo);	 
	}
	
	// 문화행사 게시판 리스트 폼 메소드
	@Override
	public List<CultureVO> culture_list() throws Exception {
		return dao.culture_list();
	}
	
	// 문화행사 게시판 상세글 메소드
	@Override
	public CultureVO culture_read(int num) throws Exception {
		return dao.culture_read(num);
		
	}
	
	// 방과후 게시판 상세글 조회수 메소드
	@Override
	public void culture_viewcnt(int num) throws Exception {
		dao.culture_viewcnt(num);
		
	}
	
	// 문화행사 게시판 글 삭제 메소드
	@Override
	public void culture_delete(int num) throws Exception {
		dao.after_delete(num);
	
	}
	
	// 문화행사 게시판 글 수정 메소드
	@Override
	public void culture_modify(CultureVO vo) throws Exception {
		dao.culture_modify(vo);
		
	}
	
	// 문화행사 이벤트 신청 폼 메소드
	@Override
	public CultureVO culture_joiner(CultureVO vo) throws Exception {
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	
	// 해당 글 번호에 대한 정보를 가져와 vo에 담음
	vo = dao.culture_joiner(vo);
	
	// 해당 글 번호에 대한 정보중에 id를 현제 로그인중인 세션 id로 바꿈
	vo.setId(auth.getName());
	return vo;
	}

	// 문화행사 이벤트 신청 메소드
	@Override
	public void culture_join(L_CultureVO vo) throws Exception{
		dao.culture_join(vo);
		
	}
}