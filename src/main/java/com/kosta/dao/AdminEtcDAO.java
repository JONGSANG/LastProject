package com.kosta.dao;

import java.util.List;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageInfo_rep;

public interface AdminEtcDAO {
	
	public List<M_BoardVO> noReply(PageInfo_rep page) throws Exception;

	public int noReplyCount() throws Exception;
	
	public List<M_BoardVO> reply(PageInfo page) throws Exception;

	public int replyCount() throws Exception;
}
