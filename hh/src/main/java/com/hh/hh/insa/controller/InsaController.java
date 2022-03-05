package com.hh.hh.insa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/insa")
public class InsaController {
	
	@GetMapping("/home")
	public String insa() {

		return "insa/insa_home";
	}
	
	@GetMapping("/injuk")
	public String injuk() {

		return "insa/insa_injuk";
	}
	
	@GetMapping("/family")
	public String family() {

		return "insa/insa_family";
	}
	
	@GetMapping("/school")
	public String school() {

		return "insa/insa_school";
	}
	
	@GetMapping("/language")
	public String language() {

		return "insa/insa_language";
	}
	
	@GetMapping("/license")
	public String license() {

		return "insa/insa_license";
	}
	
	@GetMapping("/career")
	public String career() {

		return "insa/insa_career";
	}
	
	@GetMapping("/appoint")
	public String appoint() {

		return "insa/insa_appoint";
	}
	
	@GetMapping("/reward")
	public String reward() {

		return "insa/insa_reward";
	}
	
	@GetMapping("/military")
	public String military() {

		return "insa/insa_military";
	}
}

