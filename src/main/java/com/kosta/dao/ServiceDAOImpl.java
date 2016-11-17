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

@Repository
public class ServiceDAOImpl implements ServiceDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
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
	public AfterVO after_read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.after_read", num);
	}
	
	// 방과후 게시판 상세글 조회수 메소드
	@Override
	public void after_viewcnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.after_viewcnt", num);
		
	}
	
	// 방과후 게시판 글 삭제 메소드
	@Override
	public void after_delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.after_delete", num);
		
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
	public CultureVO culture_read(int num) throws Exception {
		return sqlSession.selectOne("com.kosta.mappers.ServiceMapper.culture_read", num);
	}
	
	// 방과후 게시판 상세글 조회수 메소드
	@Override
	public void culture_viewcnt(int num) throws Exception {
		sqlSession.update("com.kosta.mappers.ServiceMapper.culture_viewcnt", num);
		
	}
	
	// 문화행사 게시판 글 삭제 메소드
	@Override
	public void culture_delete(int num) throws Exception {
		sqlSession.delete("com.kosta.mappers.ServiceMapper.culture_delete", num);
		
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
}
