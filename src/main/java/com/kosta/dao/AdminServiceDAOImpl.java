package com.kosta.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.DeliveryVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SchadulVO;

@Repository
public class AdminServiceDAOImpl implements AdminServiceDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AfterVO> afterList(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.afterList", page);
	}

	@Override
	public int afterCount() throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.afterCount");
	}

	@Override
	public List<CultureVO> cultureList(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.cultureList", page);
	}

	@Override
	public int cultureCount() throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.cultureCount");
	}

	@Override
	public AfterVO afterDetail(AfterVO vo) throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.afterDetail", vo);
	}

	@Override
	public List<L_AfterVO> afterID(AfterVO vo) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.afterID", vo);
	}

	@Override
	public CultureVO cultureDetail(CultureVO vo) throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.cultureDetail", vo);
	}

	@Override
	public List<L_CultureVO> cultureID(CultureVO vo) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.cultureID", vo);
	}

	@Override
	public int afterDetailCount(AfterVO vo) throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.afterDetailCount", vo);
	}

	@Override
	public int cultureDetailCount(CultureVO vo) throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.afterDetailCount", vo);
	}

	@Override
	public void afterChange(L_AfterVO vo) throws Exception {
		sqlSession.update("AdminServiceMapper.afterChange", vo);
		sqlSession.update("AdminServiceMapper.afterChange1", vo);
	}

	@Override
	public void cultureChange(L_CultureVO vo) throws Exception {
		sqlSession.update("AdminServiceMapper.cultureChange", vo);
		sqlSession.update("AdminServiceMapper.cultureChange1", vo);
	}

	@Override
	public List<SchadulVO> schadule_list() throws Exception {
		return sqlSession.selectList("AdminServiceMapper.schadule_list");
	}

	@Override
	public void schadule_insert(SchadulVO vo) throws Exception {
		sqlSession.insert("AdminServiceMapper.schadule_insert", vo);
	}

	@Override
	public void schedule_delete(SchadulVO vo) throws Exception {
		sqlSession.delete("AdminServiceMapper.schedule_delete", vo);
	}

	@Override
	public List<DeliveryVO> deliveryList() throws Exception {
		return sqlSession.selectList("AdminServiceMapper.deliveryList");
	}

	@Override
	public List<DeliveryVO> deliverySuccesss(PageInfo page) throws Exception {
		return sqlSession.selectList("AdminServiceMapper.deliverySuccesss", page);
	}

	@Override
	public void code(DeliveryVO vo) throws Exception {
		sqlSession.update("AdminServiceMapper.deliveryUpdate", vo);
	}

	@Override
	public int deliveryCount(PageInfo page) throws Exception {
		return sqlSession.selectOne("AdminServiceMapper.deliveryCount", page);
	}
	
}
