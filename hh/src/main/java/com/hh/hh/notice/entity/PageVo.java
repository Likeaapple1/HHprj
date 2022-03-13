package com.hh.hh.notice.entity;

import lombok.Data;

@Data
public class PageVo {

	private int currentPage;//현재 페이지
	private int cntPerPage;	//페이지 하나당 보여줄 row 갯수
	private int pageBtnCnt; //페이지 버튼 몇개 보여줄지
	private int totalRow;	//테이블의 전체 row 갯수
	
	private int startRow; 	//디비가서 조회할 rownum
	private int endRow;		//디비가서 조회할 rownum
	private int startPage;	//시작 페이지
	private int endPage;	//마지막 페이지
	private int lastPage;	//DB의 row 기준으로 마지막 페이지는 몇인지
	
	public PageVo(String currentPageStr, int cntPerPage, int pageBtnCnt, int totalRow) {
		this.currentPage = Integer.parseInt(currentPageStr);
		this.cntPerPage = cntPerPage;
		this.pageBtnCnt = pageBtnCnt;
		this.totalRow = totalRow;
		calc(currentPage, cntPerPage, pageBtnCnt, totalRow);
	}
	
	private void calc(int currentPage, int cntPerPage, int pageBtnCnt, int totalRow){
		
		this.setEndRow(this.getCurrentPage() * this.getCntPerPage());
		this.setStartRow(this.getEndRow() - this.getCntPerPage() + 1);
		
		int lastPage = this.getTotalRow() / this.getCntPerPage();
		if(this.getTotalRow() % this.getCntPerPage() > 0) {
			lastPage++;
		}
		this.setLastPage(lastPage);
		
		int endPage = this.getCurrentPage() / this.getPageBtnCnt();
		if(this.getCurrentPage() % this.getPageBtnCnt() > 0) {
			endPage++;
		}
		
		//우리는 일단 안할게요,,, 화면에서 처리 하는걸로 ,,,,
//		if(endPage > lastPage) {
//			endPage = lastPage;
//		}
		
		this.setEndPage(endPage * this.getPageBtnCnt());
		
		this.setStartPage(this.getEndPage() - this.getPageBtnCnt() + 1);
		
	}

	
	
}












