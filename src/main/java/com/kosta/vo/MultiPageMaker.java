package com.kosta.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class MultiPageMaker {

  private int totalCount;
  private int startPage;
  private int endPage;
  private boolean prev;
  private boolean next;
  private int startPage1;
  private int endPage1;
  private boolean prev1;
  private boolean next1;

  private int displayPageNum = 10;

  private MultiPageInfo multiPageInfo;

  public void setMultiPageInfo(MultiPageInfo multiPageInfo) {
    this.multiPageInfo = multiPageInfo;
  }

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;

    calcData();
  }

  private void calcData() {

    endPage = (int) (Math.ceil(multiPageInfo.getPage() / (double) displayPageNum) * displayPageNum);

    startPage = (endPage - displayPageNum) + 1;

    int tempEndPage = (int) (Math.ceil(totalCount / (double) multiPageInfo.getPerPageNum()));

    if (endPage > tempEndPage) {
      endPage = tempEndPage;
    }

    prev = startPage == 1 ? false : true;

    next = endPage * multiPageInfo.getPerPageNum() >= totalCount ? false : true;
    
    //
    
    endPage1 = (int) (Math.ceil(multiPageInfo.getPage1() / (double) displayPageNum) * displayPageNum);

    startPage1 = (endPage1 - displayPageNum) + 1;

    int tempEndPage1 = (int) (Math.ceil(totalCount / (double) multiPageInfo.getPerPageNum1()));

    if (endPage1 > tempEndPage1) {
      endPage1 = tempEndPage1;
    }

    prev1 = startPage1 == 1 ? false : true;

    next1 = endPage1 * multiPageInfo.getPerPageNum1() >= totalCount ? false : true;

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

  public MultiPageInfo getMultiPageInfo() {
    return multiPageInfo;
  }
  
	public int getStartPage1() {
		return startPage1;
	}

	public int getEndPage1() {
		return endPage1;
	}

	public boolean isPrev1() {
		return prev1;
	}

	public boolean isNext1() {
		return next1;
	}

  
  public String multi(int page){

    UriComponents uriComponents =
              UriComponentsBuilder.newInstance()
              .queryParam("page", page)
              .queryParam("perPageNum", multiPageInfo.getPerPageNum())
              .queryParam("page1", multiPageInfo.getPage1())
              .queryParam("perPageNum1", multiPageInfo.getPerPageNum1())
              .build();
    
    return uriComponents.toUriString();
  }
  
  public String multi1(int page){

	    UriComponents uriComponents =
	              UriComponentsBuilder.newInstance()
	              .queryParam("page", multiPageInfo.getPage())
	              .queryParam("perPageNum", multiPageInfo.getPerPageNum())
	              .queryParam("page1", page)
	              .queryParam("perPageNum1", multiPageInfo.getPerPageNum1())
	              .build();
	    
	    return uriComponents.toUriString();
	  }
}
