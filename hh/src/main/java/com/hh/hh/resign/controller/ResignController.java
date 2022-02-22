package com.hh.hh.resign.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hh.hh.resign.service.ResignService;

@Controller
@RequestMapping("resign")
public class ResignController {
	
	@Autowired
	private ResignService service;
	

	//사원조회1조회
	@GetMapping(value={"/history/{page}","/history"})
	public String historyList(Model model,@PathVariable(required=false) String page) throws Exception {
		if(page==null) {
			return "redirect:list/1";
		}
		
		int cntPerPage = 10; 
		int pageBtnCnt = 5; 
		int totalRow = service.getNoticeCnt(); 
		ResignHistoryVo vo = new ResignHistoryVo(page, cntPerPage, pageBtnCnt, totalRow);
		
		List<ResignHistoryVo> historyList=service.getHistoryMeber(vo);
		
		return "resign/history";
	}
	

	

}
