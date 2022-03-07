package com.hh.hh.salary.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hh.hh.member.entity.MemberDto;
import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;
import com.hh.hh.salary.service.SalaryService;

@Controller
@RequestMapping("/salary")
public class SalaryController {
	
	@Autowired
	private SqlSession ss;
	
	@Autowired
	private SalaryService service;
	
	// 급상여입력 로직처리
//	@PostMapping("/input")
//	public String input(PayrollDto dto) {
//		
//		int result = 0;
//		try {
//			result = service.enrollSalary(dto);
//		}catch(Exception e) {
//			return "salary/error";
//		}
//		
//		if(result > 0) {
//			return "redirect:/salary/input"; 
//		}else {
//			return "salary/error"; //컨트롤러 만들기
//		}
//	}
	
	// 급여 목록 조회(급여지급현황)
	@GetMapping("/payroll")
	public ModelAndView payroll(ModelAndView mv, HttpSession session) {
		
		// 디비 가서 가져오고,
		//세션얻고, 세션에서 로그인 유저 정보 얻고, 그 유저 안에서 empNo 얻기
		MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
		long empNo = loginUser.getEmpNo();
		System.out.println("============");
		System.out.println(empNo);
		List<PayrollDto> list = service.selectListOne(empNo);
		
		
		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/payroll");
		
//		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
//		String strNowDate = simpleDateFormat.format(DATE);
		
		// view 선택
		return mv;
	}
	
	// 급여명세서 페이지 이동
	@GetMapping("/payslip")
	public String payslip() {
		return "salary/payslip";
	}
	
	// 급여명세서(상세) 조회
	@GetMapping("/payslip/{m}")
	public String payslip(@PathVariable String m, Model model) {

		PayrollDto dto = ss.selectOne("salary.selectOneByPayroll", m);
		
		model.addAttribute("data", dto);
		return "salary/payslip";
	}
	
	// 급여설정 페이지 이동
//	@GetMapping("/setting")
//	public String setting() {
//		return "salary/salary_setting";
//	}
	
	@GetMapping("/setting")
	public ModelAndView setting(ModelAndView mv) {
		
		// 디비 가서 가져오고,
		List<SalaryDto> list = service.selectListS();
		
		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/salary_setting");
		
		// view 선택
		return mv;
	}
	
//	// 급여설정 조회
//	@GetMapping("/setting/{t}")
//	public String setting(@PathVariable String t, Model model) {
//
//		SalaryDto dto = ss.selectOne("salary.selectOneBySalarySetting", t);
//		
//		model.addAttribute("data", dto);
//		return "salary/salary_setting";
//	}
	
	// 급여설정 수정
	@PostMapping("setting")
	public String setting(SalaryDto dto) {
		// dto 가지고 처리 ~~~
		int result = service.setting(dto);
		
		if(result > 0) {
			//success
			return "redirect:/salary/setting";
		}else {
			//fail
			return "salary/error";
		}
	}

	
	
//	@PostMapping("/delete")
//	public String delete(PayrollDto dto) {
//		int result = service.delete(dto);
//		
//		if (result > 0) {
//			//success
//			return "redirect:/salary/payroll";
//		}else {
//			//fail
//			return "salary/error";
//		}
//	}
	
//	@GetMapping("/input")
//	public ModelAndView input(ModelAndView mv) {
//		
//		List<MemberDto> list = service.selectListE();
//		
//		// model
//		mv.addObject("list", list);
//		// view
//		mv.setViewName("salary/input");
//		
//		// view 선택
//		return mv;
//	}
	
	@GetMapping("/input")
	public String input(Model model, String type, String value) {

		Map<String, Object> map = new HashMap<>();

		// 검색
		List<MemberDto> memberList = ss.selectList("salary.selectAllEmp", map);

		// 화면에 전달해주기
		model.addAttribute("memberList", memberList);

		return "salary/salary_input";
	}
	
	
	@GetMapping("/email")
	public ModelAndView email(ModelAndView mv) {
		
		// 디비 가서 가져오고,
		List<PayrollDto> list = service.selectList();
		
		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/payslip_email");
		
		// view 선택
		return mv;
	}
	


}