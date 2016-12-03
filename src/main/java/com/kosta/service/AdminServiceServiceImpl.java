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
import com.kosta.vo.SchadulVO;

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
	public AfterVO afterDetail(AfterVO vo) throws Exception {
		return adminServicedao.afterDetail(vo);
	}

	@Override
	public List<L_AfterVO> afterID(AfterVO vo) throws Exception {
		return adminServicedao.afterID(vo);
	}

	@Override
	public CultureVO cultureDetail(CultureVO vo) throws Exception {
		return adminServicedao.cultureDetail(vo);
	}

	@Override
	public List<L_CultureVO> cultureID(CultureVO vo) throws Exception {
		return adminServicedao.cultureID(vo);
	}

	@Override
	public int afterDetailCount(AfterVO vo) throws Exception {
		return adminServicedao.afterDetailCount(vo);
	}

	@Override
	public int cultureDetailCount(CultureVO vo) throws Exception {
		return adminServicedao.cultureDetailCount(vo);
	}

	@Override
	public void afterChange(L_AfterVO vo) throws Exception {
		adminServicedao.afterChange(vo);
	}

	@Override
	public void cultureChange(L_CultureVO vo) throws Exception {
		adminServicedao.cultureChange(vo);
	}
	
	@Override
	public List<SchadulVO> schadule_list() throws Exception {
		return adminServicedao.schadule_list();
	}

	@Override
	public void schedule_insert(SchadulVO vo) throws Exception {
		adminServicedao.schadule_insert(vo);
	}

	@Override
	public void schedule_delete(SchadulVO vo) throws Exception {
		adminServicedao.schedule_delete(vo);
	}
	
}
