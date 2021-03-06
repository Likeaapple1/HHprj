package com.hh.hh.member.contoller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hh.hh.member.entity.MemberDto;
import com.hh.hh.memberservice.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	//회원가입 화면 보여주기
		@GetMapping("join")
		public String join() {
			return "join";
		}
		
		//회원가입 기능 처리
		@PostMapping("join")
		public String join(MemberDto dto, HttpServletRequest req) throws Exception{
			System.out.println(dto);
			int result = service.join(dto,req);
			if(result>0) {
				return "/login";
			}else {
				return "/join";
			}
		}
	
	// 로그인 화면 보여주기
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
	// 로그인 기능 처리
	@PostMapping("login")
	public String login(MemberDto dto, HttpSession session, HttpServletResponse resp, @RequestParam(value = "checkboxName", required = false) String[] checkboxValue) throws Exception {
		// 로그인 처리
		MemberDto loginUser = service.login(dto);
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			for(String checkInfo : checkboxValue ) {
				System.out.println(checkInfo);
				
				// 1. 아이디 저장만 체크 했는지
				 if(checkInfo.equals("rememberId")) { // 아이디 저장 쿠키 준비 
					 Cookie cookie = new Cookie("empNo", String.valueOf(loginUser.getEmpNo()));
					 cookie.setPath("/"); 
					 resp.addCookie(cookie); 
				 }
				
				// 2. 자동로그인 저장만 체크했는지
				 
				// 3. 둘 다 체크 하지 않았는지

			}

			return "redirect:/main";
		}else {
			return "fail";
		}
	}
	
	
	
}

