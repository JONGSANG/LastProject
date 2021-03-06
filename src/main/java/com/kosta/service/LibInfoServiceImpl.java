package com.kosta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.LibInfoDAO;
import com.kosta.vo.B_statusVO;

@Service
public class LibInfoServiceImpl implements LibInfoService {
	
	@Autowired
	private LibInfoDAO libInfoDAO;

	@Override
	public B_statusVO b_status() {
		return libInfoDAO.b_status();
	}
	
}
