package com.hh.hh.appr.controller;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.entity.ApprLineDto;
import com.hh.hh.appr.service.ApprService;
import com.hh.hh.member.entity.MemberDto;

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
	public String appr_gian(Model model, ApprDto dto, ApprLineDto linedto, HttpSession session, HttpServletRequest request) throws Exception{
		
		//조직도 리스트 조회
		List<ApprDto> list = service.getOrgList();
		model.addAttribute("list", list);
		
		MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
		
		//결재선 리스트 조회
		linedto.setEmpNo(loginUser.getEmpNo()); 
		List<ApprLineDto> lineList = service.getLineList(linedto);
		model.addAttribute("lineList", lineList);
				
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "appr/appr_gian";
		}else {
			return "login";
		}
		
		
		
//		return "appr/appr_gian";
	}
	@PostMapping("appr_gian")
	public String appr_gian1(Model model, ApprDto dto, ApprLineDto linedto, HttpSession session, HttpServletRequest request) throws Exception{
			
			//조직도 리스트 조회
			List<ApprDto> list = service.getOrgList();
			model.addAttribute("list", list);
			
			MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
			
			//결재선 리스트 조회
			linedto.setEmpNo(loginUser.getEmpNo()); 
			List<ApprLineDto> lineList = service.getLineList(linedto);
			model.addAttribute("lineList", lineList);
			System.out.println(linedto);
//			System.out.println(list);
			//부서, 사인, 이름 조회
			if(dto.getEmpName() != null) {
			ApprDto person = service.getPerson(dto);
			ApprDto person1 = service.getPerson1(dto);
			ApprDto person2 = service.getPerson2(dto);
			ApprDto person3 = service.getPerson3(dto);
			ApprDto person4 = service.getPerson4(dto);
			ApprDto person5 = service.getPerson5(dto);
			ApprDto person6 = service.getPerson6(dto);
			ApprDto person7 = service.getPerson7(dto);
			session.setAttribute("person", person);
			session.setAttribute("person1", person1);
			session.setAttribute("person2", person2);
			session.setAttribute("person3", person3);
			session.setAttribute("person4", person4);
			session.setAttribute("person5", person5);
			session.setAttribute("person6", person6);
			session.setAttribute("person7", person7);
			}else if(linedto.getApprUser1() != null){
				//결재선 저장
//				MemberDto loginUser = (MemberDto)request.getSession().getAttribute("loginUser");
//				linedto.setEmpNo(loginUser.getEmpNo()); 
				int result = service.insertLine(linedto,request);
			}else if(linedto.getLineNo() != 0) {
				int delResult = service.deleteLine(linedto);
			}else {
				return "appr/appr_gian";
			}
			return "appr/appr_gian";

		}
	
	@GetMapping("appr")
	public String appr() {
		return "appr/appr";
	}
}
