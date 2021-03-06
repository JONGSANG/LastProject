package com.kosta.service;

import java.util.List;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.M_Board_ReVO;
import com.kosta.vo.MultiPageInfo;

public interface AdminEtcService {

	public List<M_BoardVO> noReply(MultiPageInfo page) throws Exception;

	public int noReplyCount() throws Exception;

	public List<M_BoardVO> reply(MultiPageInfo page) throws Exception;

	public int replyCount() throws Exception;

	public M_BoardVO detail(int num) throws Exception;

	public List<M_Board_ReVO> replyDetail(int num) throws Exception;

	public void replyInsert(M_Board_ReVO vo) throws Exception;

	public void replyDelete(int num) throws Exception;

}
