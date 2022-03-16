package com.hh.hh.insa.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.hh.hh.insa.entity.EmpDto;
//import com.hh.hh.insa.service.EmpService;
import com.hh.hh.insa.service.EmpService;


@Controller
@RequestMapping("/insa")
public class EmpController {

	@Autowired
	private EmpService service;
	
	@Autowired
	private SqlSession ss;
	
	@Autowired
	private PasswordEncoder pe;

	//사원등록 버튼 있는 화면 보여주기
	@GetMapping("/home")
	public String enrollEmp(Model model)throws Exception {
		List<EmpDto> list = service.getOrgList();
		model.addAttribute("list", list);
		return "insa/insa_home";
	}

	@PostMapping("/home")
	public String enrollEmp(EmpDto empdto, HttpServletRequest req)throws Exception {
		
		//file upload
		MultipartFile profile = empdto.getProfileFile();
		String path = req.getServletContext().getRealPath("/resources/static/upload/");
		File target = new File(path, empdto.getEmpNo()+"_profile.png");
		profile.transferTo(target);
		
		
		int result = service.join(empdto, req);
		if(result>0) {
			return "redirect:/insa/home";
		}else {
			return "redirect:/insa/home";
		}	
	
//	@RequestMapping("/insa/injuk")
//	public String empdtInfo(String empNo, Model model) {
//		model.addAttribute("dto", EmpService.viewEmp(empNo));
//		logger.info("클릭한 사원명 : " + empNo);
//		return "insa/insa_injuk";
//	}

	}	
}

