/*
 * package com.hh.hh.resign.controller;

import lombok.Data;

@Data
public class ResignHistoryVo {
	
		//받아와야할 것들
		private int currentPage; //현제페이지
		private int cntPerPage;//페이지당 몇게 보여줄지
		private int pageBtnCnt;//page버튼의 최대  개수
		private int totalRow;//테이블의 천체 row 개수
		//계산해야할 것들
		private int startRow;//디비가서 조회할 rownum
		private int endRow;//디비가서 조회할 rownum
		private int startPage;//시작페이지
		private int endPage;//마지막페이지
		private int lastPage;//db의 row 기준으로 마지막 페이지는 몇인지
		
		public ResignHistoryVo(String currentPageStr, int cntPerPage, int pageBtnCnt, int totalRow) {
			this.currentPage = Integer.parseInt(currentPageStr);<!>
			this.cntPerPage = cntPerPage;
			this.pageBtnCnt = pageBtnCnt;
			this.totalRow = totalRow;
			calc(currentPage,cntPerPage,pageBtnCnt,totalRow);
		}
		
		//받아와야할것들을 받아서  계산해야할것을 계산
		private void calc(int currentPage,int cntPerpage, int pageBtnCnt,int totalRow) {
			//계산
			//나머지 5개 값 세팅
			this.setEndRow(this.getCurrentPage()*this.getCntPerPage());
			this.setStartRow(this.getEndRow()-this.getCntPerPage()+1);
			
			int lastPage=this.getTotalRow()/this.getCntPerPage();
			if(this.getTotalRow()%this.getCntPerPage()>0) {
				lastPage++;
			}
			this.setLastPage(lastPage);
			
			int endPage=this.getCurrentPage()/this.getPageBtnCnt();
			if(this.getCurrentPage()%this.getPageBtnCnt()>0) {
				endPage++;
			}
			this.setEndPage(endPage*this.getPageBtnCnt());
			
			this.setStartPage(this.getEndPage()-this.getPageBtnCnt()+1);
		}

	}
	*/


