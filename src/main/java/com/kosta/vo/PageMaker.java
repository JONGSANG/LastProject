package com.kosta.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {

  private int totalCount;
  private int startPage;
  private int endPage;
  private boolean prev;
  private boolean next;

  private int displayPageNum = 10;

  private PageInfo pageInfo;

  public void setPageInfo(PageInfo pageInfo) {
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

  public PageInfo getPageInfo() {
    return pageInfo;
  }

  public String makeQuery(int page) {

    UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
        .queryParam("perPageNum", pageInfo.getPerPageNum()).build();

    return uriComponents.toUriString();
  }
 

  public String makeResult(int page) {

	    UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
	        .queryParam("perPageNum", pageInfo.getPerPageNum())
	        .queryParam("p_bNo", ((SearchVO)pageInfo).getP_bNo())
	        .build();

	    return uriComponents.toUriString();
	  }
  
  
  public String makeBSearch(int page){
    
    UriComponents uriComponents =
              UriComponentsBuilder.newInstance()
              .queryParam("page", page)
              .queryParam("perPageNum", pageInfo.getPerPageNum())
              .queryParam("searchType", ((SearchVO)pageInfo).getSearchType())
              .queryParam("keyword", ((SearchVO)pageInfo).getKeyword())
              .build();             
    
    return uriComponents.toUriString();
  } 
  
		  
  public String makeNSearch(int page){
    
    UriComponents uriComponents =
              UriComponentsBuilder.newInstance()
              .queryParam("page", page)
              .queryParam("perPageNum", pageInfo.getPerPageNum())
              .queryParam("start_date", ((SearchVO)pageInfo).getStart_date())
              .queryParam("end_date", ((SearchVO)pageInfo).getEnd_date())
              .build();             
    
    return uriComponents.toUriString();
  } 

}
