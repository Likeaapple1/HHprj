package com.hh.hh.notice.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hh.hh.notice.entity.NoticeDto;
import com.hh.hh.notice.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private SqlSession ss;
	
	@Autowired
	private NoticeService service;
	
	//게시글 작성 페이지 보여주기
	@GetMapping("/insert")
	public String insert() {
		return "notice/insert";
	}
	
	//게시글 작성 로직 처리
	@PostMapping("/insert")
	public String insert(NoticeDto dto) {
		
		int result = 0;
		try {
			result = service.enrollNotice(dto);
		}catch(Exception e) {
			return "notice/error";
		}
		
		if(result > 0) {
			return "redirect:/notice/list"; 
		}else {
			return "notice/error"; //컨트롤러 만들기
		}
	}
	
	//게시글 목록 조회
	@GetMapping("/list")
	public ModelAndView list(ModelAndView mv) {
		
		// 디비 가서 가져오고,
		List<NoticeDto> list = service.selectList();
		
		
		// model
		mv.addObject("list", list);
		// view
		mv.setViewName("notice/list");
		
		// view 선택
		return mv;
	}
	
	//상세 페이지 조회
	@GetMapping("/detail/{t}")
	public String detail(@PathVariable String t, Model model) {
		
		System.out.println(t);
		
		NoticeDto dto = ss.selectOne("notice.selectOneByTitle", t);
		
		model.addAttribute("data", dto);
		return "notice/detail";
	}
	
	// 수정페이지
	@GetMapping("/detail2/{t}")
	public String detail2(@PathVariable String t, Model model) {
		

		return "notice/detail2";
	}
	
	//상세페이지 수정
	@PostMapping("edit")
	public String edit(NoticeDto dto) {
		// dto 가지고 처리 ~~~
		int result = service.edit(dto);
		
		if(result > 0) {
			//success
			return "redirect:/notice/list";
		}else {
			//fail
			return "notice/error";
		}
	}
	
	//상세페이지 에서 삭제
	@PostMapping("/delete")
	public String delete(NoticeDto dto) {
		int result = service.delete(dto);
		
		if (result > 0) {
			//success
			return "redirect:/notice/list";
		}else {
			//fail
			return "notice/error";
		}
	}

}