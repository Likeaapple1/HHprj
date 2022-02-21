package com.hh.hh.resign.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("resign")
public class ResignController {
	
	@Autowired
	private resignService service;

	
	@GetMapping("history")
	public String history() {
		return "resign/history";
	}
	
	@PostMapping("history")
	public String  history(Model model) {
		return "redirect:/resign/history";
	}
	
	

}
