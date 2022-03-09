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
import com.hh.hh.notice.entity.NoticeDto;
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

	// 급여설정 수정
	@PostMapping("setting")
	public String setting(SalaryDto dto) {
		// dto 가지고 처리 ~~~
		int result = service.setting(dto);

		if (result > 0) {
			// success
			return "redirect:/salary/setting";
		} else {
			// fail
			return "salary/error";
		}
	}

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

		List<PayrollDto> list = service.selectListE();

		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("salary/payslip_email");

		// view 선택
		return mv;
	}

	// 상세 페이지 조회
//		@GetMapping("/input2/{e}")
//		public String input2(@PathVariable String e, Model model) {
//			
//			System.out.println(e);
//			
//			PayrollDto dto = ss.selectOne("salary.selectOneByEmp", e);
//			
//			model.addAttribute("data", dto);
//			return "notice/salary_input2";
//		}

}