package com.hh.hh.appr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.service.ApprService;

@Controller
@RequestMapping("appr")
public class ApprController {
	
	@Autowired
	private ApprService service;
	
    // 전자결재 홈 보여주기
	@GetMapping("home")
	public String home() {
		return "appr/home";
	}
	
	// 전자결재 양식 홈 보여주기
	@GetMapping("appr_form")
	public String appr_form() {
		return "appr/appr_form";
	}
	
	// 전자결재 양식 (근태문서) 보여주기
	@GetMapping("appr_form_atte")
	public String appr_form_atte() {
		return "appr/appr_form_atte";
	}
	
	// 전자결재 양식 (신청문서) 보여주기
	@GetMapping("appr_form_app")
	public String appr_form_app() {
		return "appr/appr_form_app";
	}
	
	// 전자결재 양식 (보고문서) 보여주기
	@GetMapping("appr_form_repo")
	public String appr_form_repo() {
		return "appr/appr_form_repo";
	}
	
	// 전자결재 양식 (기안문서) 보여주기
	@GetMapping("appr_form_appr")
	public String appr_form_appr() {
		return "appr/appr_form_appr";
	}
	
	// 전자결재작성 (기안서) 보여주기
	@GetMapping("appr_gian")
	public String appr_gian(Model model) throws Exception{
		
		//조직도 리스트 조회
		List<ApprDto> list = service.getOrgList();
		model.addAttribute("list", list);
		
		return "appr/appr_gian";
	}

	@GetMapping("appr")
	public String appr() {
		return "appr/appr";
	}
}
