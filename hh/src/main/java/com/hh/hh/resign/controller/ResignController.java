package com.hh.hh.resign.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("resign")
public class ResignController {
	
	
	

	//사원조회1조회
	@GetMapping("history")
	public String historyList()  {
		
		return "resign/history";
	}
	

	

}
