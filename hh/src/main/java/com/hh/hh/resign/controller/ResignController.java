package com.hh.hh.resign.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("resign")
public class ResignController {

	//사원조회1조회
	@GetMapping("resignhistory")
	public String historyList()  {
		
		return "resign/resignhistory";
	}
	
	@GetMapping("resigninput")
	public String  resignInput() {
		return "resign/resigninput";
	}
	
	@GetMapping("resignreceipt")
	public String  resignReceipt() {
		return "resign/resignreceipt";
	}

	@GetMapping("totalresign")
	public String  totalResign() {
		return "resign/totalresign";
	}
	


	

	

}
