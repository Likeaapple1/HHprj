package com.hh.hh.main.conroller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.hh.hh.member.entity.MemberDto;

@Controller
public class MainController {
	
	@GetMapping("main")
	public String main(HttpSession session) {
		MemberDto loginUser = (MemberDto)session.getAttribute("loginUser");
		session.setAttribute("loginUser", loginUser);
		return "main";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}