package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminEtcDAO;
import com.kosta.vo.M_BoardVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageInfo_rep;

@Service
public class AdminEtcServiceImpl implements AdminEtcService {
	
	@Autowired
	AdminEtcDAO adminEtcdao;

	@Override
	public List<M_BoardVO> noReply(PageInfo_rep page) throws Exception {
		return adminEtcdao.noReply(page);
	}

	@Override
	public int noReplyCount() throws Exception {
		return adminEtcdao.noReplyCount();
	}

	@Override
	public List<M_BoardVO> reply(PageInfo page) throws Exception {
		return adminEtcdao.reply(page);
	}

	@Override
	public int replyCount() throws Exception {
		return adminEtcdao.replyCount();
	}

}
