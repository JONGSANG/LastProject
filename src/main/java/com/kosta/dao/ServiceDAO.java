package com.kosta.dao;

import java.util.List;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;

public interface ServiceDAO {
	
	//---------------------- 방과후 ----------------------
	// 방과후 글 작성 메소드
	public void after_write(AfterVO vo) throws Exception;
	
	// 방과후 게시판 리스트 폼 메소드
	public List<AfterVO> after_list() throws Exception;
	
	// 방과후 게시판 상세글 메소드
	public AfterVO after_read(AfterVO vo) throws Exception;
	
	// 방과후 게시판 상세글 현재카운터 메소드
	public int after_tocnt(AfterVO vo) throws Exception;
	
	// 방과후 게시판 상세글 세션아이디 비교
	public int after_sessionid(AfterVO vo) throws Exception;
	
	// 방과후 게시판 상세글 조회수 메소드
	public void after_viewcnt(AfterVO vo) throws Exception;
	
	// 방과후 게시판 글 삭제 메소드
	public void after_delete(AfterVO vo) throws Exception;
	
	// 방과후 게시판 글 수정 메소드
	public void after_modify(AfterVO vo) throws Exception;
	
	// 방과후 이벤트 신청 폼 메소드
	public AfterVO after_joiner(AfterVO vo) throws Exception;
	
	// 방과후 이벤트 신청 메소드
	public void after_join(L_AfterVO vo) throws Exception;
	
	// 방과후 이벤트 신청 취소 메소드
	public void after_joindel(L_AfterVO vo) throws Exception;
	
	//---------------------- 문화행사 ----------------------
	// 문화행사 글 작성 메소드
	public void culture_write(CultureVO vo) throws Exception;
	
	// 문화행사 게시판 리스트 폼 메소드
	public List<CultureVO> culture_list() throws Exception;
	
	// 문화행사 게시판 상세글 메소드
	public CultureVO culture_read(CultureVO vo) throws Exception;
	
	// 문화행사 게시판 상세글 현재카운터 메소드
	public int culture_tocnt(CultureVO vo) throws Exception;
	
	// 문화행사 게시판 상세글 세션아이디 비교 메소드
	public int culture_sessionid(CultureVO vo) throws Exception;
	
	// 방과후 게시판 상세글 조회수 메소드
	public void culture_viewcnt(CultureVO vo) throws Exception;
	
	// 문화행사 게시판 글 삭제 메소드
	public void culture_delete(CultureVO vo) throws Exception;
	
	// 문화행사 게시판 글 수정 메소드
	public void culture_modify(CultureVO vo) throws Exception;
	
	// 문화행사 이벤트 신청 폼 메소드
	public CultureVO culture_joiner(CultureVO vo) throws Exception;
	
	// 문화행사 이벤트 신청 메소드
	public void culture_join(L_CultureVO vo) throws Exception;
	
	// 방과후 이벤트 신청 취소 메소드
	public void culture_joindel(L_CultureVO vo) throws Exception;
}
