package com.kosta.dao;

import java.util.List;



import com.kosta.vo.BestVo;
import com.kosta.vo.ReadVo;

public interface B_BoardDao {
	
	public List<BestVo> best() throws Exception;   //select all
	public List<BestVo> genre1() throws Exception; 
	public List<BestVo> genre2() throws Exception; 
	public List<BestVo> genre3() throws Exception;
	public List<BestVo> genre4() throws Exception; 
	//public void updateReadCount(String bId);  //조회수 증가
	public  ReadVo read(String BNO) throws Exception;
}
