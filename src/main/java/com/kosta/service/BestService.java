package com.kosta.service;

import java.util.List;

import com.kosta.vo.BestVo;
import com.kosta.vo.ReadVo;


public interface BestService {

	public ReadVo read(String BNO) throws Exception;

	List<BestVo> best() throws Exception;
	
	List<BestVo> genre1() throws Exception;
	
	List<BestVo> genre2() throws Exception;
	
	List<BestVo> genre3() throws Exception;
	
	List<BestVo> genre4() throws Exception;

}
