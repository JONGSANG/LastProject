package com.kosta.dao;

import java.util.List;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SchadulVO;

public interface AdminServiceDAO {
	public List<AfterVO> afterList(PageInfo page) throws Exception;

	public int afterCount() throws Exception;

	public List<CultureVO> cultureList(PageInfo page) throws Exception;

	public int cultureCount() throws Exception;
	
	public AfterVO afterDetail(AfterVO vo) throws Exception;
	
	public List<L_AfterVO> afterID(AfterVO vo) throws Exception;
	
	public CultureVO cultureDetail(CultureVO vo) throws Exception;

	public List<L_CultureVO> cultureID(CultureVO vo) throws Exception;
	
	public int afterDetailCount(AfterVO vo) throws Exception;
	
	public int cultureDetailCount(CultureVO vo) throws Exception;

	public void afterChange(L_AfterVO vo) throws Exception;

	public void cultureChange(L_CultureVO vo) throws Exception;
	
	//----------------------스케줄--------------------------
	
	//스케줄 리스트 메소드
	public List<SchadulVO> schadule_list() throws Exception;
}
