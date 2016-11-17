package com.kosta.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker_rep {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;

	private int displayPageNum = 5;

	private PageInfo_rep pageInfo;

	public void setPageInfo(PageInfo_rep pageInfo) {
		this.pageInfo = pageInfo;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;

		calcData();
	}

	private void calcData() {

		endPage = (int) (Math.ceil(pageInfo.getPage() / (double) displayPageNum) * displayPageNum);

		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) pageInfo.getPerPageNum()));

		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}

		prev = startPage == 1 ? false : true;

		next = endPage * pageInfo.getPerPageNum() >= totalCount ? false : true;

	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public PageInfo_rep getPageInfo() {
		return pageInfo;
	}

	public String makeQuery(int page) {

		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", pageInfo.getPerPageNum()).build();

		return uriComponents.toUriString();
	}

	public String makeRepQuery(int page) {

		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("num", ((F_Board_ReVO)pageInfo).getNum())
				.queryParam("page", page)
				.queryParam("perPageNum", pageInfo.getPerPageNum())
				.build();

		return uriComponents.toUriString();
	}
	

	public String makeMRepQuery(int page) {

		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("num", ((M_Board_ReVO)pageInfo).getNum())
				.queryParam("page", page)
				.queryParam("perPageNum", pageInfo.getPerPageNum())
				.build();

		return uriComponents.toUriString();
	}

	// public String makeNSearch(int page){
	//
	// UriComponents uriComponents =
	// UriComponentsBuilder.newInstance()
	// .queryParam("page", page)
	// .queryParam("perPageNum", pageInfo.getPerPageNum())
	// .queryParam("start_date", ((F_Board_ReVO)pageInfo).getStart_date())
	// .queryParam("end_date", ((F_Board_ReVO)pageInfo).getEnd_date())
	// .build();
	//
	// return uriComponents.toUriString();
	// }

}
