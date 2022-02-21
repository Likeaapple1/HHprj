package com.hh.hh;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hh.salary.SalaryDto;

@Controller
@RequestMapping("/salary")
public class SalaryController {
	
	@Autowired
	private SqlSession ss;
	
	// 급여 대장 조회
	@GetMapping("/payroll")
	public String payroll(Model model, String type, String value) {
		
		Map<String, Object> map = new HashMap<>();
		
		// 검색
		List<SalaryDto> salaryList = ss.selectList("salary.search", map);
		
		//salaryList 화면에 전달해주기
		model.addAttribute("salaryList", salaryList);
		
		return "salary/main";
	}
}
