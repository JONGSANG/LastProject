package com.kosta.service;

import java.util.List;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;

public interface ServiceService {
	
		//---------------------- 방과후 ----------------------
		public void after_write(AfterVO vo) throws Exception;
		public List<AfterVO> after_list() throws Exception;
		public AfterVO after_read(int num) throws Exception;
		public void after_viewcnt(int num) throws Exception;
		public void after_delete(int num) throws Exception;
		public void after_modify(AfterVO vo) throws Exception;
		public AfterVO after_joiner(AfterVO vo) throws Exception;
		public void after_join(L_AfterVO vo) throws Exception;
		
		//---------------------- 문화행사 ----------------------
		public void culture_write(CultureVO vo) throws Exception;
		public List<CultureVO> culture_list() throws Exception;
		public CultureVO culture_read(int num) throws Exception;
		public void culture_viewcnt(int num) throws Exception;
		public void culture_delete(int num) throws Exception;
		public void culture_modify(CultureVO vo) throws Exception;
		public CultureVO culture_joiner(CultureVO vo) throws Exception;
		public void culture_join(L_CultureVO vo) throws Exception;
}
