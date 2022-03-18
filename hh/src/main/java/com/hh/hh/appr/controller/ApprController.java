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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.entity.ApprLineDto;
import com.hh.hh.appr.entity.ApprovalDto;
import com.hh.hh.appr.service.ApprService;
import com.hh.hh.member.entity.MemberDto;

@Controller
@RequestMapping("appr")
public class ApprController {
	
	@Autowired
	private ApprService service;
	
    // 전자결재 홈 보여주기
	@GetMapping("home")
	public String home(ApprovalDto appr, Model model, HttpServletRequest request) throws Exception {
		//기안 대기 문서 리스트 조회
		MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
		
		appr.setLoginNo(loginUser.getEmpNo());
		
		List<ApprovalDto> recList = service.getRecList(appr);
		model.addAttribute("recList", recList);
		
		return "appr/home";
	}
	@PostMapping("home")
	public String home(ApprovalDto apprdto, HttpServletRequest request) throws Exception {
		MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
		apprdto.setEmpNo(loginUser.getEmpNo());
		int apprResult = service.insertApproval(apprdto, request);
		return "appr/home";
	}
	
	// 전자결재 양식 홈 보여주기
	@GetMapping(value = {"/appr_detail", "/appr_detail/{p}"})
	public String appr_detail(@PathVariable(required = false) String p, HttpSession session, ApprDto dto) throws Exception {
		ApprovalDto approval = service.getApproval(p);
		session.setAttribute("approval", approval);
		
		dto.setUser1(approval.getApprNo1());
		dto.setUser2(approval.getApprNo2());
		dto.setUser3(approval.getApprNo3());
		dto.setUser4(approval.getApprNo4());
		dto.setEmpNo(approval.getEmpNo());
		ApprDto emp = service.getEmp(dto);
		ApprDto emp1 = service.getUser1(dto);
		ApprDto emp2 = service.getUser2(dto);
		ApprDto emp3 = service.getUser3(dto);
		ApprDto emp4 = service.getUser4(dto);
		session.setAttribute("emp", emp);
		session.setAttribute("emp1", emp1);
		session.setAttribute("emp2", emp2);
		session.setAttribute("emp3", emp3);
		session.setAttribute("emp4", emp4);
		
		return "appr/appr_detail";
	}
	
	// 전자결재 수신 문서함 보여주기
	@GetMapping("reception")
	public String reception(ApprovalDto appr, Model model, HttpServletRequest request) throws Exception {
		//수신대기함 리스트 조회
		MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
		
		appr.setLoginNo(loginUser.getEmpNo());
		
		List<ApprovalDto> recList = service.getRecList(appr);
		model.addAttribute("recList", recList);

		return "appr/reception";
	}
	
	@PostMapping("reception")
	public String reception() throws Exception {
		
		return "appr/reception";
	}
	
	// 전자결재 상세조회 보여주기
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
	public String appr_gian1(Model model, ApprDto dto, ApprLineDto linedto, ApprovalDto apprdto, HttpSession session, HttpServletRequest request) throws Exception{
			
			//조직도 리스트 조회
			List<ApprDto> list = service.getOrgList();
			model.addAttribute("list", list);
			
			MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
			
			//결재선 리스트 조회
			linedto.setEmpNo(loginUser.getEmpNo()); 
			List<ApprLineDto> lineList = service.getLineList(linedto);
			model.addAttribute("lineList", lineList);
			
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
			}else if(dto.getUser1() != null) {
				ApprDto user1 = service.getUser1(dto);
				session.setAttribute("user1", user1);
				if(dto.getUser2() != null && !dto.getUser2().equals("")) {
					ApprDto user2 = service.getUser2(dto);
					session.setAttribute("user2", user2);
				}
				if(dto.getUser3() != null && !dto.getUser3().equals("")) {
					ApprDto user3 = service.getUser3(dto);
					session.setAttribute("user3", user3);
				}
				if(dto.getUser4() != null && !dto.getUser4().equals("")) {
					ApprDto user4 = service.getUser4(dto);
					session.setAttribute("user4", user4);
				}
				if(dto.getViewer1() != null && dto.getViewer1() != "") {
					ApprDto viewer1 = service.getViewer1(dto);
					session.setAttribute("viewer1", viewer1);
				}
				if(dto.getViewer2() != null && dto.getViewer2() != "") {
					ApprDto viewer2 = service.getViewer2(dto);
					session.setAttribute("viewer2", viewer2);
				}
				if(dto.getViewer3() != null && dto.getViewer3() != "") {
					ApprDto viewer3 = service.getViewer3(dto);
					session.setAttribute("viewer3", viewer3);
				}
				if(dto.getViewer4() != null && dto.getViewer4() != "") {
					ApprDto viewer4 = service.getViewer4(dto);
					session.setAttribute("viewer4", viewer4);
				}
				
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
