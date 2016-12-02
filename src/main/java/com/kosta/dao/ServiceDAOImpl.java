package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;
import com.kosta.vo.O_BoardVO;
import com.kosta.vo.SchadulVO;

@Repository
public class ServiceDAOImpl implements ServiceDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	//------------------------------------민원게시판----------------------------------------

	@Override
	public void m_create(M_BoardVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.m_create", vo);	// ServiceMapper의 create로 보냄
	}

	@Override
	public M_BoardVO m_read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_read", num);
	}

	@Override
	public void m_update(M_BoardVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.m_update", vo);
	}

	@Override
	public void m_delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.m_delete", num);
	}

	@Override
	public List<M_BoardVO> m_listAll(M_BoardVO vo) throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.m_listAll",vo);
	}

	@Override
	public M_Board_ReVO m_read2(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_read2", num);
	}
	
	@Override
	public void m_delete_re(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.m_delete_re", num);
	}
	
	@Override
	public void m_insertComment(M_Board_ReVO vo2) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.m_insertComment", vo2);
		
	}

	@Override
	public List<M_Board_ReVO> m_commentList(M_Board_ReVO vo) throws Exception {
		
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.m_commentList", vo);
	}

	@Override
	public void m_update_re(M_Board_ReVO vo2) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.m_update_re", vo2);
	}

	// 조회수 업데이트
	@Override
	public void m_updateViewCnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.m_updateViewCnt", num);
		
	}

	@Override
	public int m_listCount(M_BoardVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_listCount", vo);
	}

	@Override
	public int m_repAllCount(M_Board_ReVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.m_repAllCount", vo);
	}
	
	//--------------------------------------- 방과후 --------------------------------------- 
	// 방과후 글 작성 메소드
	@Override
	public void after_write(AfterVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.after_write", vo);
		
	}
	
	// 방과후 게시판 리스트 폼 메소드
	@Override
	public List<AfterVO> after_list() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.after_list");
	}
	
	// 방과후 게시판 상세글 메소드
	@Override
	public AfterVO after_read(AfterVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_read", vo);
	}
	
	// 방과후 게시판 상세글 현재카운터 메소드
	@Override
	public int after_tocnt(AfterVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_tocnt", vo);
	}
	
	// 방과후 게시판 상세글 세션아이디 비교
	@Override
	public int after_sessionid(AfterVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_sessionid", vo);
	}
	
	// 방과후 게시판 상세글 조회수 메소드
	@Override
	public void after_viewcnt(AfterVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.after_viewcnt", vo);
		
	}
	
	// 방과후 게시판 상세글 신청 비교
	@Override
	public AfterVO after_sessionstate(AfterVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_sessionstate", vo);
	}
	
	// 방과후 게시판 글 삭제 메소드
	@Override
	public void after_delete(AfterVO vo) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.after_delete", vo);
		
	}
	
	// 방과후 게시판 글 수정 메소드
	@Override
	public void after_modify(AfterVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.after_modify", vo);
		
	}
	
	// 방과후 이벤트 신청 폼 메소드
	@Override
	public AfterVO after_joiner(AfterVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_joiner", vo);
	}
	
	// 방과후 이벤트 신청 메소드
	// after_list 테이블에 먼저 신청자 리스트에 추가하고, after테이블에서
	// 해당글에 대한 현제 카운터를 +1
	@Override
	@Transactional
	public void after_join(L_AfterVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.after_join", vo);
		sqlSession.update("com.kosta.mappers.ServiceMapper.after_joinup", vo);
	}
	
	// 방과후 이벤트 신청 취소 메소드
	@Override
	public void after_joindel(L_AfterVO vo) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.after_joindel", vo);
	}
	
	//--------------------------------------- 문화행사 ---------------------------------------
	// 문화행사 글 작성 메소드
	@Override
	public void culture_write(CultureVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.culture_write", vo);
		
	}
	
	// 문화행사 게시판 리스트 폼 메소드
	@Override
	public List<CultureVO> culture_list() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.culture_list");
	}
	
	// 문화행사 게시판 상세글 메소드
	@Override
	public CultureVO culture_read(CultureVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_read", vo);
	}
	
	// 문화행사 게시판 상세글 현재카운터 메소드
	@Override
	public int culture_tocnt(CultureVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_tocnt",vo);
	}

	
	// 문화행사 게시판 상세글 세션아이디 비교
	@Override
	public int culture_sessionid(CultureVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_sessionid", vo);
	}
	
	// 문화행사 게시판 상세글 신청 비교
	@Override
	public CultureVO culture_sessionstate(CultureVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_sessionstate", vo);
	}
	
	// 문화행사 게시판 상세글 조회수 메소드
	@Override
	public void culture_viewcnt(CultureVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.culture_viewcnt", vo);
		
	}
	
	// 문화행사 게시판 글 삭제 메소드
	@Override
	public void culture_delete(CultureVO vo) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.culture_delete", vo);
		
	} 
	
	// 문화행사 게시판 글 수정 메소드
	@Override
	public void culture_modify(CultureVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.culture_modify", vo);
		
	}
	
	// 문화행사 이벤트 신청 폼 메소드
	@Override
	public CultureVO culture_joiner(CultureVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_joiner", vo);
	}
	
	// 문화행사 이벤트 신청 메소드
	// culture_list 테이블에 먼저 신청자 리스트에 추가하고, culture테이블에서
	// 해당글에 대한 현제 카운터를 +1
	@Override
	@Transactional
	public void culture_join(L_CultureVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.culture_join", vo);
		sqlSession.update("com.kosta.mappers.ServiceMapper.culture_joinup", vo);
	}
	
	// 문화행사 이벤트 신청 취소 메소드
	@Override
	public void culture_joindel(L_CultureVO vo) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.culture_joindel", vo);
	}
	
	//--------------------------------------- 공개자료실 ---------------------------------------
	// 공개자료실 글 작성 메소드
	@Override
	public void openboard_join(O_BoardVO vo) throws Exception {
		sqlSession.insert("com.kosta.mappers.ServiceMapper.openboard_join",vo);		
	}
	
	// 공개자료실 게시판 리스트 폼 메소드
	@Override
	public List<O_BoardVO> openboard_list() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.openboard_list");
	}
	
	// 공개자료실 게시판 상세글 메소드
	@Override
	public O_BoardVO openboard_read(O_BoardVO vo) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.openboard_read",vo);
	}
	
	// 공개자료실 게시판 상세글 조회수 메소드
	@Override
	public void openboard_viewcnt(O_BoardVO vo) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.openboard_viewcnt",vo);
	}

	@Override
	public void openboard_delete(O_BoardVO vo) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.openboard_delete",vo);
		
	}

	@Override
	public void openboard_modify(O_BoardVO vo) throws Exception {
		sqlSession.selectOne("com.kosta.mappers.ServiceMapper.openboard_modify",vo);
	}

	@Override
	public List<SchadulVO> schadul_list() throws Exception {
		return sqlSession.selectList("com.kosta.mappers.ServiceMapper.schadul_list");
	}
	
	@Override
	public int handicapCheck(String id) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.handicapCheck", id);
	}
}
