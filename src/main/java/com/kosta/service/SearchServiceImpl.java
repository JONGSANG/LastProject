package com.kosta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.kosta.dao.SearchDAO;
import com.kosta.vo.Hope_repVO;
import com.kosta.vo.HopeVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.SearchVO;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	private SearchDAO SearchDAO;

	@Override
	public List<SearchVO> b_searchResult(SearchVO vo) throws Exception {
		return SearchDAO.b_searchResult(vo);
	}
	
	@Override
	public List<SearchVO> n_searchResult(SearchVO vo) throws Exception {
		return SearchDAO.n_searchResult(vo);
	}

	@Override
	public SearchVO readInfo(String bNo) throws Exception {
		return SearchDAO.readInfo(bNo);
	}

	@Override
	public int listNSearchCount(SearchVO vo) throws Exception {
		return SearchDAO.listNSearchCount(vo);
	}

	@Override
	public int listBSearchCount(SearchVO vo) throws Exception {
		return SearchDAO.listBSearchCount(vo);
	}

	@Override
	public List<SearchVO> p_listAll(SearchVO vo) throws Exception {
		return SearchDAO.p_listAll(vo);
	}

	@Override
	public List<SearchVO> p_listOneAll(SearchVO vo) throws Exception {
		return SearchDAO.p_listOneAll(vo);
	}

	@Override
	public int listCount(PageInfo pageInfo) throws Exception {
		return SearchDAO.listCount(pageInfo);
	}

	@Override
	public int resultCount(PageInfo pageInfo) throws Exception {
		return SearchDAO.resultCount(pageInfo);
	}
/////////////////////////////////
	
	// 게시물을 담을 vo가 필요하다.
		@Override
		public void regist(HopeVO f_board) throws Exception {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			f_board.setId(auth.getName());
			SearchDAO.create(f_board);
		}

		// 어떤 게시물을 상세보기 하기 위해선 num
		@Override
		public HopeVO read(int num) throws Exception {
			return SearchDAO.read(num);
		}

		// 등록한 댓글을 보기 위해서
		@Override
		public Hope_repVO read2(int num) throws Exception {
			return SearchDAO.read2(num);
		}

		// 수정하기 위해 vo 필요하다.
		@Override
		public void modify(HopeVO board) throws Exception {
			SearchDAO.update(board);
		}

		// 삭제할 게시물의 번호가 필요하다.
		@Override
		public void remove(int num) throws Exception {
			SearchDAO.delete(num);
		}
		
		@Override
		public void remove_re(int num) throws Exception {
			SearchDAO.delete_re(num);
		}

		// list 형태로 모든 list 출력
		@Override
		public List<HopeVO> listAll(HopeVO vo) throws Exception {
			return SearchDAO.listAll(vo);
		}

		// 댓글을 담을 vo2가 필요하다.
		@Override
		public void insertComment(Hope_repVO vo2) throws Exception {
			SearchDAO.insertComment(vo2);
		}

		@Override
		public List<Hope_repVO> commentList(Hope_repVO vo) throws Exception {
			return SearchDAO.commentList(vo);
		}

		@Override
		public void update_re(Hope_repVO board) throws Exception {
			SearchDAO.update_re(board);
		}

		// 조회수 업데이트
		@Override
		public void updateViewCnt(int num) throws Exception {
			SearchDAO.updateViewCnt(num);
		}

		// 글 페이징
		@Override
		public int f_listAllCount(HopeVO vo) throws Exception {
			return SearchDAO.f_listAllCount(vo);
		}
		// 댓글 페이징
		@Override
		public int f_repAllCount(Hope_repVO vo) throws Exception {
			return SearchDAO.f_repAllCount(vo);
		}

	

}
