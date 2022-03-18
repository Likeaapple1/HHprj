package com.hh.hh.main.conroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hh.hh.member.entity.MemberDto;
import com.hh.hh.notice.entity.NoticeDto;
import com.hh.hh.notice.service.NoticeService;

@Controller
public class MainController {
	
	@Autowired
    private NoticeService service;
	
    @GetMapping("main")
    public ModelAndView main(ModelAndView mv, HttpSession session) {
        
        MemberDto loginUser = (MemberDto)session.getAttribute("loginUser");
        session.setAttribute("loginUser", loginUser);
        List<NoticeDto> list = service.selectList();
        mv.addObject("list", list);
        mv.setViewName("main");
        return mv;
    }
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
}