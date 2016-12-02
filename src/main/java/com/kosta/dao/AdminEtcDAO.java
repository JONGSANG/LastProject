package com.kosta.dao;

import java.util.List;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;
import com.kosta.vo.MultiPageInfo;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageInfo_rep;

public interface AdminEtcDAO {
	
	public List<M_BoardVO> noReply(MultiPageInfo page) throws Exception;

	public int noReplyCount() throws Exception;
	
	public List<M_BoardVO> reply(MultiPageInfo page) throws Exception;

	public int replyCount() throws Exception;

	public M_BoardVO detail(int num) throws Exception;

	public List<M_Board_ReVO> replyDetail(int num) throws Exception;

	public void replyInsert(M_Board_ReVO vo) throws Exception;

	public void replyDelete(int num) throws Exception;
}
