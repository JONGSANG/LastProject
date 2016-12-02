package com.kosta.vo;

public class MultiPageInfo {

  private int page;
  private int perPageNum;
  private int page1;
  private int perPageNum1;

  public MultiPageInfo() {
    this.page = 1;
    this.perPageNum = 10;
    this.page1 = 1;
    this.perPageNum1=10;
  }

  public void setPage(int page) {

    if (page <= 0) {
      this.page = 1;
      return;
    }

    this.page = page;
  }

  public void setPerPageNum(int perPageNum) {

    if (perPageNum <= 0 || perPageNum > 100) {
      this.perPageNum = 10;
      return;
    }

    this.perPageNum = perPageNum;
  }

  public int getPage() {
    return page;
  }

  // method for MyBatis SQL Mapper -
  public int getPageStart() {

    return (this.page - 1) * perPageNum;
  }

  // method for MyBatis SQL Mapper
  public int getPerPageNum() {

    return this.perPageNum;
  }
  
  public void setPage1(int page1) {

	    if (page <= 0) {
	      this.page1 = 1;
	      return;
	    }

	    this.page1 = page1;
	  }

	  public void setPerPageNum1(int perPageNum1) {

	    if (perPageNum1 <= 0 || perPageNum1 > 100) {
	      this.perPageNum1 = 10;
	      return;
	    }

	    this.perPageNum1 = perPageNum1;
	  }

	  public int getPage1() {
	    return page1;
	  }

	  // method for MyBatis SQL Mapper -
	  public int getPageStart1() {

	    return (this.page1 - 1) * perPageNum1;
	  }

	  // method for MyBatis SQL Mapper
	  public int getPerPageNum1() {

	    return this.perPageNum1;
	  }
}
