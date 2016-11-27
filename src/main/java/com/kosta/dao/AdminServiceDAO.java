package com.kosta.dao;

import java.util.List;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.PageInfo;

public interface AdminServiceDAO {
	public List<AfterVO> afterList(PageInfo page) throws Exception;

	public int afterCount() throws Exception;

	public List<CultureVO> cultureList(PageInfo page) throws Exception;

	public int cultureCount() throws Exception;
	
	public AfterVO afterDetail(int num) throws Exception;
	
	public List<L_AfterVO> afterID(int num) throws Exception;
	
	public CultureVO cultureDetail(int num) throws Exception;

	public List<L_CultureVO> cultureID(int num) throws Exception;
}
