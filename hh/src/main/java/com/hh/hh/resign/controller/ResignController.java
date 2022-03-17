package com.hh.hh.resign.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hh.hh.resign.entity.ResignDto;
import com.hh.hh.resign.service.ResignService;

@Controller
@RequestMapping("resign")
public class ResignController {
	
	@Autowired
	private ResignService service;

	@Autowired
	private SqlSession ss;
	//사원조회1조회
	@GetMapping(value= {"/history","/history/{p}"})
	public ModelAndView history(ModelAndView mv,@PathVariable(required = false) String p, Model model) throws Exception{
		
		List<ResignDto> list=service.getResignList();
		mv.addObject("list", list);
		mv.setViewName("resign/history");
		
		ResignDto data= ss.selectOne("resign.selectOneEmp",p);
		System.out.println(data);
		model.addAttribute("data",data);
		
		return mv;
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
