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
	@Override
	public void after_write(AfterVO vo) throws Exception {
		dao.after_write(vo);	
	}

	@Override
	public List<AfterVO> after_list() throws Exception {
		return dao.after_list();
	}

	@Override
	public AfterVO after_read(int num) throws Exception {
		return dao.after_read(num);
		
	}
	
	@Override
	public void after_viewcnt(int num) throws Exception {
		dao.after_viewcnt(num);
		
	}

	@Override
	public void after_delete(int num) throws Exception {
		dao.after_delete(num);
	
	}

	@Override
	public void after_modify(AfterVO vo) throws Exception {
		dao.after_modify(vo);
		
	}
	
	@Override
	public AfterVO after_joiner(AfterVO vo) throws Exception {
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	vo = dao.after_joiner(vo);
	vo.setId(auth.getName());
	return vo;
	}

	@Override
	public void after_join(L_AfterVO vo) throws Exception{
		dao.after_join(vo);
		
	}
	
	//--------------------------------------- 문화행사 ---------------------------------------
	@Override
	public void culture_write(CultureVO vo) throws Exception {
		dao.culture_write(vo);	 
	}

	@Override
	public List<CultureVO> culture_list() throws Exception {
		return dao.culture_list();
	}

	@Override
	public CultureVO culture_read(int num) throws Exception {
		return dao.culture_read(num);
		
	}
	
	@Override
	public void culture_viewcnt(int num) throws Exception {
		dao.after_viewcnt(num);
		
	}

	@Override
	public void culture_delete(int num) throws Exception {
		dao.after_delete(num);
	
	}

	@Override
	public void culture_modify(CultureVO vo) throws Exception {
		dao.culture_modify(vo);
		
	}
	
	@Override
	public CultureVO culture_joiner(CultureVO vo) throws Exception {
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	vo = dao.culture_joiner(vo);
	vo.setId(auth.getName());
	return vo;
	}

	@Override
	public void culture_join(L_CultureVO vo) throws Exception{
		dao.culture_join(vo);
		
	}
}
