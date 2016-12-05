package com.kosta.dao;

import java.util.List;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.DeliveryVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;
import com.kosta.vo.O_BoardVO;
import com.kosta.vo.SchadulVO;

public interface ServiceDAO {
	//----------------------민원게시판--------------------
	
		// 본 게시물의 모든 목록 보기
		public List<M_BoardVO> m_listAll(M_BoardVO vo) throws Exception;
		
		// 게시물 페이징 
		public int m_listCount(M_BoardVO vo) throws Exception;

		// 본 게시물 작성
		public void m_create(M_BoardVO vo) throws Exception;
		
		// 본 게시물의 내용 상세보기
		public M_BoardVO m_read(int num) throws Exception;
		
		// 본 게시물 수정
		public void m_update(M_BoardVO vo) throws Exception;
		
		// 본 게시물 삭제
		public void m_delete(int num) throws Exception;
		
		// 댓글 삭제
		public void m_delete_re(int num) throws Exception;
		
		// 댓글 내용 보기
		public M_Board_ReVO m_read2(int num) throws Exception;
		
		// 댓글 등록
		public void m_insertComment(M_Board_ReVO vo2) throws Exception ;
		
		// 댓글 목록 조회
		public List<M_Board_ReVO> m_commentList(M_Board_ReVO vo) throws Exception;
		
		// 댓글 목록 페이징
		public int m_repAllCount(M_Board_ReVO vo) throws Exception ;

		// 댓글 수정
		public void m_update_re(M_Board_ReVO vo2)throws Exception;

		// 게시글 조회수 증가
		public void m_updateViewCnt(int num) throws Exception;
	
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
	
	// 방과후 게시판 상세글 신청 비교
	public AfterVO after_sessionstate(AfterVO vo) throws Exception;
	
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
	
	// 문화행사 게시판 상세글 신청 비교 메소드
	public CultureVO culture_sessionstate(CultureVO vo) throws Exception;
	
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
	
	//---------------------- 공개자료실 ----------------------
		// 공개자료실 글 작성 메소드
		public void openboard_join(O_BoardVO vo) throws Exception;
		
		// 공개자료실 게시판 리스트 폼 메소드
		public List<O_BoardVO> openboard_list() throws Exception;
		
		// 공개자료실 게시판 상세글 메소드
		public O_BoardVO openboard_read(O_BoardVO vo) throws Exception;
		
		// 공개자료실 게시판 상세글 조회수 메소드
		public void openboard_viewcnt(O_BoardVO vo) throws Exception;
		
		// 공개자료실 게시판 글 삭제 메소드
		public void openboard_delete(O_BoardVO vo) throws Exception;
		
		// 공개자료실 게시판 글 수정 메소드
		public void openboard_modify(O_BoardVO vo) throws Exception;
	

		public DeliveryVO delivery(DeliveryVO vo) throws Exception;

		public void deliveryApply(DeliveryVO vo) throws Exception;

		public List<DeliveryVO> deliveryList(DeliveryVO vo) throws Exception;
}
