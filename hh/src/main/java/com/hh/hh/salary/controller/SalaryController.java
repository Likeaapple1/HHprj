package com.hh.hh.salary.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.hh.hh.salary.entity.InputDto;
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

	// 급여 목록 조회(급여이체현황)
	@GetMapping("/payroll")
	public ModelAndView payroll(ModelAndView mv, HttpSession session) {

		// 디비 가서 가져오고,
		// 세션얻고, 세션에서 로그인 유저 정보 얻고, 그 유저 안에서 empNo 얻기
		MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
		long empNo = loginUser.getEmpNo();
		List<PayrollDto> list = service.selectListOne(empNo);

		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/payroll");

		// view 선택
		return mv;
	}

	// 급여명세서 페이지 이동
	@GetMapping("/payslip")
	public ModelAndView payslip(ModelAndView mv, HttpSession session) {

		MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
		long empNo = loginUser.getEmpNo();
		List<PayrollDto> list = service.selectListOne(empNo);

		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/payslip");

		// view 선택
		return mv;
	}

	// 급여명세서(상세) 조회
	@GetMapping("/payslip/{m}")
	public String payslip(@PathVariable String m, Model model) {

		PayrollDto dto = ss.selectOne("salary.selectOneByPayroll", m);

		model.addAttribute("data", dto);
		return "salary/payslip";
	}

	// 급여명세서 월별검색
	@PostMapping("/payslip")
	public String payslip(PayrollDto dto) throws NullPointerException {
		System.out.println("=====================출력" + dto);

		int result = service.searchPayslip(dto);

		if (result > 0) {
			// success
			return "redirect:/salary/payslip";
		} else {
			// fail
			return "salary/error";
		}

	}

	@GetMapping("/setting")
	public ModelAndView setting(ModelAndView mv) {

		List<SalaryDto> list = service.selectListS();

		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/salary_setting");

		// view 선택
		return mv;
	}

	// 급여설정 수정
	@PostMapping("setting")
	public String setting(SalaryDto dto, HttpServletRequest req) throws Exception {
		// dto 가지고 처리
		int result = service.setting(dto);

		if (result > 0) {
			// success
			return "redirect:/salary/setting";
		} else {
			// fail
			return "salary/error";
		}
	}

	@GetMapping("/email")
	public ModelAndView email(ModelAndView mv) {

		List<PayrollDto> list = service.selectListE();

		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/payslip_email");

		// view 선택
		return mv;
	}

	
	
	
	
	
	
	
	

	
	
	
	
		//급상여입력 payroll 등록
		@PostMapping("/input/{temp}")
		public String input(InputDto dto, @PathVariable String temp) {
			
			System.out.println("=== 출력" + temp);
			
			int result = 0;
			try {
				result = service.enrollPayroll(dto);
			}catch(Exception e) {
				return "salary/error";
			}
			
			if(result > 0) {
				return "redirect:/salary/input"; 
			}else {
				return "salary/error";
			}
		}
		
		//급상여입력 전체사원조회 + 사원 한명 급여조회
		@GetMapping(value = {"/input", "/input/{p}"})
		public ModelAndView input(ModelAndView mv, @PathVariable(required = false) String p, Model model) {

			List<InputDto> list = service.selectEmpList();

			// model
			mv.addObject("list", list);
			// view
			mv.setViewName("salary/salary_input");
			
			InputDto dto = ss.selectOne("salary.selectOneByEmpPayroll", p);
			
			model.addAttribute("data", dto);
			
			// view 선택
			return mv;
		}
		
		// 급상여입력 사원 급여조회
//		@GetMapping("/input")
//		public String input(@PathVariable String p, Model model) {
//			
//			System.out.println(p);
//			
//			InputDto dto = ss.selectOne("salary.selectOneByEmpPayroll", p);
//			
//			model.addAttribute("data", dto);
//			
//			return "salary/salary_input";
//		}
	
		


}