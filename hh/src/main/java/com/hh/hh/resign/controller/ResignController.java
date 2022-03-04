package com.hh.hh.resign.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hh.hh.resign.entity.ResignDto;
import com.hh.hh.resign.service.ResignService;



@Controller
@RequestMapping("resign")
public class ResignController {
	@Autowired
	private ResignService service;

	//사원조회1조회
	@GetMapping("history")
	public String historyList()  {
		
		return "resign/resignhistory";
	}
	
	@GetMapping("resignInput")
	public String  resignInput() {
		return "resign/resigninput";
	}
	
	@GetMapping("resignReceipt")
	public String  resignReceipt() {
		return "resign/resignReceipt";
	}

	@GetMapping("totalResign")
	public String  totalResign() {
		return "resign/totalResign";
	}
	
	@GetMapping("/")
	public String list(Model model) throws Exception {
		
		
		List<ResignDto> list=service.getMemberVo();
		model.addAttribute("list",list);
		System.out.println(model);
		return "/";
	}

	

	

}
