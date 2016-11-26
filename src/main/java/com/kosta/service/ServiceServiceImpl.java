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
import com.kosta.vo.O_BoardVO;

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
	public AfterVO after_read(AfterVO vo) throws Exception {
		return dao.after_read(vo);
		
	}
	
	// 방과후 게시판 상세글 현재카운터 메소드
	@Override
	public int after_tocnt(AfterVO vo) throws Exception {
		return dao.after_tocnt(vo);
	}
	
	// 방과후 게시판 상세글 세션아이디 비교
	@Override
	public int after_sessionid(AfterVO vo) throws Exception {
		return dao.after_sessionid(vo);
	}
	
	// 방과후 게시판 상세글 조회수 메소드
	@Override
	public void after_viewcnt(AfterVO vo) throws Exception {
		dao.after_viewcnt(vo);
		
	}
	
	// 방과후 게시판 글 삭제 메소드
	@Override
	public void after_delete(AfterVO vo) throws Exception {
		dao.after_delete(vo);
	
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
	
	// 방과후 이벤트 신청 취소 메소드
	@Override
	public void after_joindel(L_AfterVO vo) throws Exception {
		dao.after_joindel(vo);
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
	public CultureVO culture_read(CultureVO vo) throws Exception {
		return dao.culture_read(vo);
	}
	
	// 문화행사 게시판 상세글 현재카운터 메소드
	@Override
	public int culture_tocnt(CultureVO vo) throws Exception {
		return dao.culture_tocnt(vo);
	}
	
	// 문화행사 게시판 상세글 세션아이디 비교
	@Override
	public int culture_sessionid(CultureVO vo) throws Exception {
		return dao.culture_sessionid(vo);
	}
	
	// 방과후 게시판 상세글 조회수 메소드
	@Override
	public void culture_viewcnt(CultureVO vo) throws Exception {
		dao.culture_viewcnt(vo);
		
	}
	
	// 문화행사 게시판 글 삭제 메소드
	@Override
	public void culture_delete(CultureVO vo) throws Exception {
		dao.culture_delete(vo);
	
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
	
	// 방과후 이벤트 신청 취소 메소드
	@Override
	public void culture_joindel(L_CultureVO vo) throws Exception {
		dao.culture_joindel(vo);
	}
	
	//--------------------------------------- 공개자료실 --------------------------------------- 
	// 공개자료실 글 작성 메소드
	@Override
	public void openboard_join(O_BoardVO vo) throws Exception {
		dao.openboard_join(vo);
	}
	
	// 공개자료실 게시판 리스트 폼 메소드
	@Override
	public List<O_BoardVO> openboard_list() throws Exception {
		return dao.openboard_list();
	}
	
	// 공개자료실 게시판 상세글 메소드
	@Override
	public O_BoardVO openboard_read(O_BoardVO vo) throws Exception {
		return dao.openboard_read(vo);
	}
	
	// 공개자료실 게시판 상세글 조회수
	@Override
	public void openboard_viewcnt(O_BoardVO vo) throws Exception {
		dao.openboard_viewcnt(vo);
	}
	
	// 공개자료실 게시판 글 삭제 메소드
	@Override
	public void openboard_delete(O_BoardVO vo) throws Exception {
		dao.openboard_delete(vo);
	}

	@Override
	public void openboard_modify(O_BoardVO vo) throws Exception {
		dao.openboard_modify(vo);
	}
}
