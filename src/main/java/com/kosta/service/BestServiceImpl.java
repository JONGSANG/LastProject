package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.B_BoardDao;
import com.kosta.vo.BestVo;
import com.kosta.vo.ReadVo;

@Service
public class BestServiceImpl implements BestService {

	@Autowired
	private B_BoardDao boardDao;

	@Override
	public ReadVo read(String BNO) throws Exception {
		return boardDao.read(BNO);
	}
	
	@Override
	public List<BestVo> best() throws Exception {
		return boardDao.best();
	}

	@Override
	public List<BestVo> genre1() throws Exception {
		return boardDao.genre1();
	}
	
	@Override
	public List<BestVo> genre2() throws Exception {
		return boardDao.genre2();
	}
	
	@Override
	public List<BestVo> genre3() throws Exception {
		return boardDao.genre3();
	}
	
	@Override
	public List<BestVo> genre4() throws Exception {
		return boardDao.genre4();
	}
	

}
