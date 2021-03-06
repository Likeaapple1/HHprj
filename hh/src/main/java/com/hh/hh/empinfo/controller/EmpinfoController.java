package com.hh.hh.empinfo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hh.hh.empinfo.entity.EmpinfoDto;
import com.hh.hh.empinfo.service.EmpinfoService;

@Controller
@RequestMapping("/emp")
public class EmpinfoController {
	
	
	@Autowired
	private EmpinfoService service;
	
	@Autowired
	private SqlSession ss;
	

	// 상세 인적사항 페이지 이동
		@GetMapping("/injuk")
		public String empdtinfo() {
			
			return "insa/insa_injuk";
		}
		
		
		
		
		
		
		
		
		
		// 상세 가족사항 페이지 이동
		@GetMapping("/family")
		public String family() {

			return "insa/insa_family";
		}
		
		// 상세 학력사항 페이지 이동
		@GetMapping("/school")
		public String school() {

			return "insa/insa_school";
		}
		
		// 상세 언어능력 페이지 이동
		@GetMapping("/language")
		public String language() {

			return "insa/insa_language";
		}
		
		// 상세 자격증 페이지 이동
		@GetMapping("/license")
		public String license() {

			return "insa/insa_license";
		}
		
		// 상세 경력사항 페이지 이동
		@GetMapping("/career")
		public String career() {

			return "insa/insa_career";
		}
		
		// 상세 발령사항 페이지 이동
		@GetMapping("/appoint")
		public String appoint() {

			return "insa/insa_appoint";
		}
		
		// 상세 상벌 페이지 이동
		@GetMapping("/reward")
		public String reward() {

			return "insa/insa_reward";
		}
		
		// 상세 병역사항 페이지 이동
		@GetMapping("/military")
		public String military() {

			return "insa/insa_military";
		}
		
		// 증명서 발급 페이지 이동
		@GetMapping("/certificate")
		public String certificate() {

			return "insa/insa_certificate";
		}
		
		// 조직도 페이지 이동
		@GetMapping("/organization")
		public String organization() {

			return "insa/insa_organization";
		}
		
		@GetMapping("/addemployee")
		public String addemployee() {

			return "insa/insa_addemployee";
		}
}
