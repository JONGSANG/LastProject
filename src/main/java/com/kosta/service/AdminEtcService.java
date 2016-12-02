package com.kosta.service;

import java.util.List;

import com.kosta.vo.M_BoardVO;
import com.kosta.vo.MultiPageInfo;

public interface AdminEtcService {

	public List<M_BoardVO> noReply(MultiPageInfo page) throws Exception;

	public int noReplyCount() throws Exception;

	public List<M_BoardVO> reply(MultiPageInfo page) throws Exception;

	public int replyCount() throws Exception;

}
