package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminServiceDAO;
import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.PageInfo;

@Service
public class AdminServiceServiceImpl implements AdminServiceService {

	@Autowired
	private AdminServiceDAO adminServicedao;

	@Override
	public List<AfterVO> afterList(PageInfo page) throws Exception {
		return adminServicedao.afterList(page);
	}

	@Override
	public int afterCount() throws Exception {
		return adminServicedao.afterCount();
	}

	@Override
	public List<CultureVO> cultureList(PageInfo page) throws Exception {
		return adminServicedao.cultureList(page);
	}

	@Override
	public int cultureCount() throws Exception {
		return adminServicedao.cultureCount();
	}

	@Override
	public AfterVO afterDetail(int num) throws Exception {
		return adminServicedao.afterDetail(num);
	}

	@Override
	public List<L_AfterVO> afterID(int num) throws Exception {
		return adminServicedao.afterID(num);
	}

	@Override
	public CultureVO cultureDetail(int num) throws Exception {
		return adminServicedao.cultureDetail(num);
	}

	@Override
	public List<L_CultureVO> cultureID(int num) throws Exception {
		return adminServicedao.cultureID(num);
	}
	
	
}
