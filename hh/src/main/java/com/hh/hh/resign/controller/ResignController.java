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
	@GetMapping(value= {"/history"})
	public String history(Model model) throws Exception{
		
		List<ResignDto> list=service.getResignList();
		System.out.println(list);
		model.addAttribute("list",list);
		
		return "resign/history";
	}
	
	
	
	
	@GetMapping("/input")
	public String  input(Model model) throws Exception {
		
		List<ResignDto> list=service.getResignList();
		System.out.println(list);
		model.addAttribute("list",list);
		
		return "resign/input";
	}
	
	
	@GetMapping("/receipt")
	public String  receipt(Model model) throws Exception {
		
		List<ResignDto> list=service.getResignList();
		System.out.println(list);
		model.addAttribute("list",list);
		
		return "resign/receipt";
	}
	

	@GetMapping("totalresign")
	public String  totalResign(Model model) throws Exception {
		
		List<ResignDto> list=service.getTotalResignList();
		System.out.println(list);
		model.addAttribute("list",list);
		
		return "resign/totalresign";
	}
	


	

	

}
