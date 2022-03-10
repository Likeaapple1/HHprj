package com.hh.hh.common;

import lombok.Data;

@Data
public class PageVo {
		// 받아와야 하는 값들
		private int currentPage;// 현재 페이지
		private int cntPerPage; // 페이지 하나당 보여줄 row갯수 (10개씩 보여줄 건지, 5개씩 보여줄건지)
		private int pageBtnCnt; // 페이지 버튼 몇 개 보여줄지
		private int totalRow;	// 테이블의 전체 row 갯수
		
		// 계산이 필요한 값들
		private int startRow;	// DB가서 조회활 rowNum
		private int endRow;		// DB가서 조회활 rowNum
		private int startPage;	// 시작 페이지
		private int endPage;	// 마지막 페이지
		private int lastPage; 	// DB의 row 기준으로 마지막 페이지는 몇인지
		
	    public PageVo(String currentPageStr, int cntPerPage, int pageBtnCnt, int totalRow) {
	        int currentPage = Integer.parseInt(currentPageStr);
	        this.currentPage = currentPage;
	        this.cntPerPage = cntPerPage;
	        this.pageBtnCnt = pageBtnCnt;
	        this.totalRow = totalRow;
	        calc(currentPage, cntPerPage, pageBtnCnt, totalRow);
	    }
		private void calc(int currentPage, int cntPerPage, int pageBtnCnt, int totalRow) {
			// 계산 처리
			// 나머지 5개 값 셋팅
			this.setEndRow(this.getCurrentPage() * this.getCntPerPage());
			this.setStartRow(this.getEndRow() - this.getCntPerPage() + 1);
			
			int lastPage = this.getTotalRow() / this.getCntPerPage();
			if(this.getTotalRow() % this.getCntPerPage()>0) {
				lastPage++;	
			}
			this.setLastPage(lastPage);
			
			int endPage = this.getCurrentPage() / this.getPageBtnCnt();
			if(this.getCurrentPage() % this.getPageBtnCnt() > 0) {
				endPage++;
			}
			
			if(endPage > lastPage) {
				endPage = lastPage;
			}
			
			this.setEndPage(endPage * this.getPageBtnCnt());
			
			this.setStartPage(this.getEndPage() - this.getPageBtnCnt() + 1);
		}
}
